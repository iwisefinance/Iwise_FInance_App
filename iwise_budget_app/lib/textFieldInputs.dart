
import 'package:flutter/material.dart';

class TextValues extends StatelessWidget {
	final String title;
	final bool obscure;
	final TextInputType keyboard;
	final Function validate;
	final TextEditingController controller;
	final int passwordLength;
	final Function saved;
	TextValues({this.title, this.obscure, this.validate, this.controller, this.keyboard, this.passwordLength, this.saved});

	@override
	Widget build(BuildContext context) {
		return TextFormField(
			controller:controller,
			obscureText: obscure,
			decoration: InputDecoration(labelText:title),
			validator:validate,
			onSaved: saved,
			maxLength: passwordLength,
		);
	}
}