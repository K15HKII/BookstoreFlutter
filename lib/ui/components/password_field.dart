import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {

  @override
  State<PasswordField> createState() => _PasswordFieldState();

}

class _PasswordFieldState extends State<PasswordField> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: "Mật khẩu",
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          border: InputBorder.none),
      obscureText: _obscureText,
      enableSuggestions: false,
      autocorrect: false,
    );
  }

}
