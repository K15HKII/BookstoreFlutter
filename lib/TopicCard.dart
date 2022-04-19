import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:huy12345/ForgotPassPage.dart';
import 'RegisterPage.dart';
import 'ForgotPassPage.dart';
import 'designunchangedcard.dart';
import 'navigate.dart';

class TopicCard extends StatefulWidget {
  const TopicCard({Key? key}) : super(key: key);

  @override
  State<TopicCard> createState() => _TopicCardState();
}

class _TopicCardState extends State<TopicCard> {
  //-------------------------------------------------
  String TopicCard_Topic = "Huycute";
  String TopicCard_Image = "assest/testbg.jpg";
  //-------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      height: 106,
      width: 70,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 8, right: 8)),
            Container(
              height: 70,
              width: 54,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(TopicCard_Image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Center(
              child: Text(
                TopicCard_Topic,
                style: TextStyle(fontSize: 12, fontFamily: "Lato"),
              ),
            )
          ],
        ),
      ),
    );
  }

// ···
}
