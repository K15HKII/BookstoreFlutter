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

class DesignCardWithStar extends StatefulWidget {
  const DesignCardWithStar({Key? key}) : super(key: key);

  @override
  State<DesignCardWithStar> createState() => _DesignCardWithStarState();
}

class _DesignCardWithStarState extends State<DesignCardWithStar> {
  @override
  Widget build(BuildContext context) {
    //------------------------------------------------------------------------
    String PriceCardWithStar_Image = "assest/testbg.jpg";
    int PriceCardWithStar_PriceInt = 696969;
    String PriceCardWithStar_Title = "Sách đắc nhân tâm";
    String PriceCardWithStar_Price = PriceCardWithStar_PriceInt.toString();
    double PriceCardWithStar_StarInt = 4.9;
    String PriceCardWithStar_Star = PriceCardWithStar_StarInt.toString();
    //------------------------------------------------------------------------
    return new SizedBox(
      height: 260,
      width: 172,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 137,
              width: 172,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(PriceCardWithStar_Image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 12,
                ),
                new Container(
                  decoration: BoxDecoration(),
                  height: 61,
                  width: 124,
                  child: Column(
                    children: <Widget>[
                      new Container(
                        width: 124,
                        height: 36,
                        child: Text(
                          PriceCardWithStar_Title,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: "Lato"),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      new Row(
                        children: <Widget>[
                          Text(
                            PriceCardWithStar_Price,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Lato",
                                color: Colors.red),
                          ),
                          new Container(
                            width: 10,
                            height: 19,
                            child: Text(
                              "đ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Lato",
                                  color: Colors.red),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                new Container(
                  height: 21,
                  width: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(heartuncheck),
                    ),
                  ),
                  child: Container(
                      child: TextButton(
                          child: Text(""),
                          onPressed: () {
                            PriceCardWithStar_HeartInt += 1;
                            if (PriceCardWithStar_HeartInt % 2 == 1) {
                              setState(() {
                                heartuncheck = "assest/heartcheck.png";
                              });
                            }
                            if (PriceCardWithStar_HeartInt % 2 == 0) {
                              setState(() {
                                heartuncheck = "assest/heartuncheck.png";
                              });
                            }
                          })),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            new Row(
              children: <Widget>[
                SizedBox(
                  width: 12,
                ),
                new Container(
                  height: 28,
                  width: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(
                            5.0) //                 <--- border radius here
                        ),
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 5.44,
                      ),
                      new Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assest/starfull.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.44,
                      ),
                      new Container(
                        width: 17,
                        height: 13,
                        child: Text(
                          PriceCardWithStar_Star,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Lato",
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

// ···
}
