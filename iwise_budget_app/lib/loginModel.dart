import 'package:flutter/material.dart';

class LoginModel {
	String username;
	String password;

	LoginModel({this.username, this.password});

  factory LoginModel.fromJson(Map<String, dynamic> json){
  return LoginModel(
    username: json['usernameOrEmail'],
    password: json['password']
  );
}

 Map toMap() {
   var map = new Map<String, dynamic>();
   map['usernameOrEmail'] = username;
   map['password'] = password;
   return map;
 }
}