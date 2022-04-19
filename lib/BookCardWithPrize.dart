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

class BookCardWithPrize extends StatefulWidget {
  const BookCardWithPrize({Key? key}) : super(key: key);

  @override
  State<BookCardWithPrize> createState() => _BookCardWithPrizeState();
}

class _BookCardWithPrizeState extends State<BookCardWithPrize> {
  @override
  Widget build(BuildContext context) {
    //-----------------------------------------------------------------------
    String BookCardWithPrize_Image = "assest/testbg.jpg";
    String BookCardWithPrize_Title = "Hồ đắc nhân tâm";
    String BookCardWithPrize_Type = "Bìa cứng";
    int BookCardWithPrize_AmountInt = 69;
    int BookCardWithPrize_PriceInt = 696969;
    String BookCardWithPrize_Amount = BookCardWithPrize_AmountInt.toString();
    String BookCardWithPrize_Price = BookCardWithPrize_PriceInt.toString();
    //-----------------------------------------------------------------------
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
                  image: AssetImage(BookCardWithPrize_Image),
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
                      BookCardWithPrize_Title,
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
                      BookCardWithPrize_Type,
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
          new Column(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              new Row(
                children: <Widget>[
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
                      BookCardWithPrize_Amount,
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
              SizedBox(
                height: 7,
              ),
              Row(
                children: <Widget>[
                  Text(
                    BookCardWithPrize_Price,
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: "Lato",
                      color: Color(0xff001c44),
                    ),
                  ),
                  Text(
                    " đ",
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: "Lato",
                      color: Color(0xff001c44),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

// ···
}
