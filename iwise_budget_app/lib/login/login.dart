import 'package:flutter/material.dart';

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
      //  var user = (
        // 
      //  )
			print(loginModel.UserfullName);
			print(loginModel.UserPassword);
		}
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
                        letterSpacing: 2,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We are glad to have you join us again \n Login to create budget and get free coins',
                style: TextStyle(
                  fontSize: 15,
                ),
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
                      obscure: false,
                      validate: (String val) {
                        if (val.isEmpty) {
                          return "This field can't be empty";
                        } else
                          return null;
                      },
                      saved: (String val) {
                        loginModel.UserfullName = val;
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
                        _loginForm.currentState.save();
                        return null;
                      },
                      saved: (String val) {
                        loginModel.UserPassword = val;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: _onSubmit,
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: mainColor,
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: white,
                              fontSize: 20,
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
                              'Create Account',
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
