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

class BookCardWithTotalPrize extends StatefulWidget {
  const BookCardWithTotalPrize({Key? key}) : super(key: key);

  @override
  State<BookCardWithTotalPrize> createState() => _BookCardWithTotalPrizeState();
}

class _BookCardWithTotalPrizeState extends State<BookCardWithTotalPrize> {
  @override
  Widget build(BuildContext context) {
    //---------------------------------------------------------------
    String BookCardWithTotalPrize_Image = "assest/testbg.jpg";
    String BookCardWithTotalPrize_Title = "Hồ đắc nhân tâm";
    String BookCardWithTotalPrize_Type = "Bìa cứng";
    int BookCardWithTotalPrize_AmountInt = 10;
    int BookCardWithTotalPrize_PriceInt = 6969;
    String BookCardWithTotalPrize_Amount =
    BookCardWithTotalPrize_AmountInt.toString();
    String BookCardWithTotalPrize_Price =
    BookCardWithTotalPrize_PriceInt.toString();
    int BookCardWithTotalPrize_TotalPriceInt=BookCardWithTotalPrize_PriceInt*BookCardWithTotalPrize_AmountInt;
    String BookCardWithTotalPrize_TotalPrice=BookCardWithTotalPrize_TotalPriceInt.toString();
    //---------------------------------------------------------------
    return new Container(
      height: 138,
      width: 327,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          new Row(
            children: <Widget>[
              Container(
                  height: 68,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(BookCardWithTotalPrize_Image),
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
                          BookCardWithTotalPrize_Title,
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
                          BookCardWithTotalPrize_Type,
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
                      new Row(
                        children: <Widget>[],
                      ),
                      new Container(
                        width: 48,
                        height: 19,
                        child: Text(
                          BookCardWithTotalPrize_Amount,
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
                  new Row(
                    children: <Widget>[
                      Text(
                        BookCardWithTotalPrize_Price,
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
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          new Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Text(
                "Note",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  color: Color(0xff636363),
                ),
              ),
              SizedBox(
                width: 105,
              ),
              Text(
                "Thành tiền ",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: "Lato",
                  color: Colors.red,
                ),
              ),
              Text(
                BookCardWithTotalPrize_TotalPrice,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: "Lato",
                  color: Colors.red,
                ),
              ),
              Text(
                " đ",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: "Lato",
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

// ···
}
