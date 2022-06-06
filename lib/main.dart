import 'package:bookstore_flutter/ui/authentication/login/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstRoute(),
      theme: ThemeData(),
));

class FirstRoute extends StatefulWidget {
  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

bool _obscureText = true;
String? _password;

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Login()
    );
  }
}
