import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwisebudgetapp/components/colors.dart';
import 'package:iwisebudgetapp/login/login.dart';
import 'package:iwisebudgetapp/textFieldInputs.dart';
import 'package:iwisebudgetapp/signupModel.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _confirmPassword;

  //We just create a model for the signup.
  //Here we can be able to transfer user input to the registration API.
  SignUpModel model = SignUpModel();

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController nameController;
  TextEditingController usernameController;
  TextEditingController emailController;
  TextEditingController passwordController;
  TextEditingController confirmPasswordController;

  _onSubmit() async {
    if (_form.currentState.validate()) {
     await createUser("http://iwise.herokuapp.com/api/auth/signup", body: model.toMap());
      print(model.toMap());
    }else {
      throw new Exception(Error);
    }
  }

Future <SignUpModel> createUser(String url, {Map body}) async {
  var newBody = json.encode(body);
  return await http.post(url, headers: {'Content-type': 'application/json','Accept': 'application/json'} ,body: newBody )
  .then((http.Response response) {
    final int statusCode = response.statusCode;

    if(statusCode < 200 || statusCode > 400 || json == null){
      throw new Exception("Unable to register new user");
    }else {
      // return SignUpModel.fromJson(json.decode(response.body));
      Navigator.pushReplacementNamed(context, '/login');
      print(response.body);
    }
  });
}

  @override
  void initState() {
    nameController = TextEditingController();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Column(
            children: [
              Image.asset('assets/login.png'),
              SizedBox(
                height: 15,
              ),
              Text(
                'Create Account',
                style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        color: mainColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _form,
                child: Column(
                  children: [
                    TextValues(
                      title: 'name',
                      obscure: false,
                      validate: (String val) {
                        if (val.isEmpty) {
                          return "This field can't be empty";
                        } else
                          return null;
                      },
                      saved: (String val) {
                        model.name = val;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextValues(
                      title: 'username',
                      obscure: false,
                      validate: (String val){
                        if(val.isEmpty){
                          return "A username is required";
                        }else {
                          return null;
                        }
                      },
                      saved: (String val){
                        model.username = val;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextValues(
                      title: 'Email Address ',
                      obscure: false,
                      keyboard: TextInputType.emailAddress,
                      controller: emailController,
                      validate: (String val) {
                        if (val.isEmpty) {
                          return "Email is required";
                        }
                        if (!EmailValidator.validate(val)) {
                          return "Invalid email input";
                        }
                        return null;
                      },
                      saved: (String val) {
                        model.email = val;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextValues(
                      passwordLength: 10,
                      title: 'Password',
                      obscure: true,
                      controller: passwordController,
                      validate: (String val) {
                        if (val.isEmpty) {
                          return "Password is required";
                        }
                        if (val.length < 10) {
                          return "Password must be greater than 8 characters";
                        }
                        _form.currentState.save();
                        return null;
                      },
                      saved: (String val) {
                        model.password = val;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextValues(
                      passwordLength: 10,
                      title: 'Confirm Password',
                      controller: confirmPasswordController,
                      obscure: true,
                      validate: (String val) {
                        if (val.isEmpty) {
                          return "This field can't be empty";
                        }
                        if (val.length < 10) {
                          return "Password must be greater than 8 characters";
                        }
                        if (_confirmPassword != model.password) {
                          return "Passwords do not match";
                        }
                        return null;
                      },
                      saved: (String val) {
                        setState(() {
                          _confirmPassword = val;
                        });
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: _onSubmit,
                      child: Container(
                       width: 230.0,
                       height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: mainColor,
                        ),
                        child: Center(
                          child: Text(
                            'Create account',
                            style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Already have an account?'),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Login()));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: mainColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('or Sign-up With '),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      print("google");
                    },
                    child: SvgPicture.asset('assets/google.svg'),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  FlatButton(
                    onPressed: () => {
                      print("facebook")
                    },
                    child: SvgPicture.asset('assets/facebook.svg'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
