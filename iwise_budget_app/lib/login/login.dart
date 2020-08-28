import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;

import 'package:google_fonts/google_fonts.dart';
import 'package:iwisebudgetapp/components/colors.dart';
import 'package:iwisebudgetapp/textFieldInputs.dart';
import 'package:iwisebudgetapp/loginModel.dart';
import 'package:iwisebudgetapp/signup/signUp.dart';
import 'package:iwisebudgetapp/components/loader.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _loginForm = GlobalKey<FormState>();
  TextEditingController passwordController;

  	_onSubmit(){
		if (_loginForm.currentState.validate()) {
			Navigator.pushReplacementNamed(context, '/individualDashboard');
      userLogin("http://iwise.herokuapp.com/api/auth/login", body: loginModel.toMap());
			print(loginModel.toMap());
      		}
	}


Future <LoginModel> userLogin(String url, {Map body}) async {
  var newBody = json.encode(body);
  return await http.post(url, headers: {'Content-type': 'application/json','Accept': 'application/json'}, body: newBody)
  .then((http.Response response)  {
    final int statusCode = response.statusCode;
    if(statusCode < 200 || statusCode > 400 || json == null){
      throw new Exception("Invalid login parameters");
    }else {
      print(response.body);
    }
    return null;
  });
}
  LoginModel loginModel = LoginModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Column(
            children: <Widget>[
              Image.asset('assets/login.png'),
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome Back',
                style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        color: mainColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _loginForm,
                child: Column(
                  children: <Widget>[
                    TextValues(
                      title: 'Username or Email',
                      icon: Icon(Icons.email),
                      obscure: false,
                      validate: (String val) {
                        if (val.isEmpty) {
                          return "All fields are required.";
                        } if(!EmailValidator.validate(val)){
                            return "Invalid email input.";
                        }
                         else
                          return null;
                      },
                      saved: (String val) {
                        loginModel.username = val;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextValues(
                      passwordLength: 10,
                      icon: Icon(Icons.lock),
                      title: 'Password',
                      obscure: true,
                      controller: passwordController,
                      validate: (String val) {
                        if (val.isEmpty) {
                          return "All fields are required.";
                        }
                        if (val.length < 10) {
                          return "Password must be greater than 8 characters.";
                        }
                        _loginForm.currentState.save();
                        return null;
                      },
                      saved: (String val) {
                        loginModel.password = val;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: _onSubmit,
                      child: Container(
                        width: 230.0,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: mainColor,
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Don't have an account ?"),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => SignUp()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Create one',
                              style: TextStyle(
                                  
                                  color: mainColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
