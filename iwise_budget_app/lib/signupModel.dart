import 'package:flutter/material.dart';

class SignUpModel {
		String name;
    String username;
		String email;
		String password;

		SignUpModel({this.name, this.username, this.email, this.password});

    factory SignUpModel.fromJson(Map<String, dynamic> json){
      return SignUpModel(
        name: json['name'],
        username: json['username'],
        email: json['userEmail'],
        password: json['userpassword']
      );
    }

    Map toMap() {
      var map = new Map<String, dynamic>();
      map['name'] = name;
      map['username'] = username;
      map['email'] = email;
      map['password'] = password;

      return map;
    }
}