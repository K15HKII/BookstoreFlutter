import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:huy12345/ForgotPassPage.dart';
import 'package:huy12345/main.dart';
import 'RegisterPage.dart';
import 'ForgotPassPage.dart';
import 'designunchangedcard.dart';
import 'PriceCardWithStar.dart';

class NavigatePage extends StatefulWidget {
  const NavigatePage({Key? key}) : super(key: key);

  @override
  State<NavigatePage> createState() => _NavigatePageState();
}



class _NavigatePageState extends State<NavigatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
          children: <Widget>[
            new Container(
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                           FirstRoute()));
                },
                child: Text('main'),
              ),
            ),
            new Container(
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ForgotPass()));
                },
                child: Text('forgotpass'),
              ),
            ),
            new Container(
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DesignCard()));
                },
                child: Text('card'),
              ),
            ),
            new Container(
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Registedpage2()));
                },
                child: Text('registed'),
              ),
            ),
            new Container(
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DesignCardWithStar()));
                },
                child: Text('test'),
              ),
            ),
          ],
        ),
    );
  }
}
