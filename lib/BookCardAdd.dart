import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:huy12345/ForgotPassPage.dart';
import 'RegisterPage.dart';
import 'ForgotPassPage.dart';
import 'DesignCardView.dart';
import 'navigate.dart';

class BookCardAdd extends StatefulWidget {
  BookCardAdd(
      String Title, String Image, String Type, int OriginPrice, int Amount,
      {Key? key})
      : super(key: key) {
    BookCardAdd_Title = Title;
    BookCardAdd_Image = Image;
    BookCardAdd_Type = Type;
    BookCardAdd_PriceOriginInt = OriginPrice;
    BookCardAdd_CountInt=Amount;

  }
  @override
  State<BookCardAdd> createState() => _BookCardAddState();
}

class _BookCardAddState extends State<BookCardAdd> {
  @override
  Widget build(BuildContext context) {
    //--------------------------------------------------------

    int BookCardAdd_PriceSumInt =
        BookCardAdd_PriceOriginInt * BookCardAdd_CountInt;
    String BookCardAdd_PriceSum = BookCardAdd_PriceSumInt.toString();
    String BookCardAdd_Count = BookCardAdd_CountInt.toString();

    //--------------------------------------------------------
    return new Container(
      width: 327,
      height: 101,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          new Column(
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              new Container(
                  height: 68,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(BookCardAdd_Image),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              SizedBox(
                height: 25,
              )
            ],
          ),
          new Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              new Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 19,
                      width: 203,
                      child: Text(
                        BookCardAdd_Title,
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
                    width: 9,
                  ),
                  new Container(
                      height: 18,
                      width: 14,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/trashcanicon.png")),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: new FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            child: TextButton(
                              onPressed: null,
                              child: Text(''),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 215,
                  height: 14,
                  child: Text(
                    BookCardAdd_Type,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Lato",
                      color: Color(0xff636363),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: 12.5,
              ),
              new Container(
                height: 28,
                width: 240,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    new Container(
                      height: 28,
                      width: 90,
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              BookCardAdd_PriceSum,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Lato",
                                color: Colors.red,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              " đ",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Lato",
                                color: Colors.red,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    new Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assest/minusbutton.png'))),
                      child: TextButton(
                          child: Text(''),
                          onPressed: () {
                            if (BookCardAdd_CountInt > 0) {
                              BookCardAdd_CountInt -= 1;
                              BookCardAdd_PriceSumInt =
                                  BookCardAdd_PriceOriginInt *
                                      BookCardAdd_CountInt;
                              setState(() {
                                BookCardAdd_Count =
                                    BookCardAdd_CountInt.toString();
                                BookCardAdd_PriceSum =
                                    BookCardAdd_PriceSumInt.toString();
                              });
                            }
                            if (BookCardAdd_CountInt == 0) {}
                          }),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: 22,
                            child: Center(
                              child: Text(
                                BookCardAdd_Count,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Lato",
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ))),
                    SizedBox(
                      width: 10,
                    ),
                    new Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assest/plusbutton.png'))),
                      child: TextButton(
                          child: Text(''),
                          onPressed: () {
                            BookCardAdd_CountInt += 1;
                            BookCardAdd_PriceSumInt =
                                BookCardAdd_PriceOriginInt *
                                    BookCardAdd_CountInt;
                            setState(() {
                              BookCardAdd_Count =
                                  BookCardAdd_CountInt.toString();
                              BookCardAdd_PriceSum =
                                  BookCardAdd_PriceSumInt.toString();
                            });
                          }),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
