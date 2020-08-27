import 'package:flutter/material.dart';

class LoginModel {
	String username;
	String email;
	String password;

	LoginModel({this.username, this.email, this.password});

  factory LoginModel.fromJson(Map<String, dynamic> json){
  return LoginModel(
    username: json['name'],
    email: json['email'],
    password: json['password']
  );
}

 Map toMap() {
   var map = new Map<String, dynamic>();
   map['username'] = username;
   map['email'] = email;
   map['password'] = password;
   return map;
 }
}