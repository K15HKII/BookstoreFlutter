import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:huy12345/ForgotPassPage.dart';
import 'RegisterPage.dart';
import 'ForgotPassPage.dart';
import 'DesignCardView.dart';
import 'navigate.dart';

class BookCard extends StatefulWidget {
  const BookCard({Key? key}) : super(key: key);

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    //--------------------------------------------------------
    String BookCard_Image = "assest/testbg.jpg";
    String BookCard_Title = "Hồ đắc nhân tâm";
    String BookCard_Type = "Bìa cứng";
    int BookCard_AmountInt = 69;
    String BookCard_Amount = BookCard_AmountInt.toString();
    //--------------------------------------------------------
    return new Container(
      height: 100,
      width: 327,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
              height: 68,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(BookCard_Image),
                  fit: BoxFit.fitHeight,
                ),
              )),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 68,
            width: 150,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 6,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      BookCard_Title,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Lato",
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      BookCard_Type,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Lato",
                        color: Color(0xff636363),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 35,
          ),
          new Container(
            width: 9,
            height: 19,
            child: Text(
              "x",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Lato",
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          new Container(
            width: 48,
            height: 19,
            child: Text(
              BookCard_Amount,
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Lato",
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }

// ···
}
