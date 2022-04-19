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

class PriceCard extends StatefulWidget {
  const PriceCard({Key? key}) : super(key: key);

  @override
  State<PriceCard> createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  @override
  Widget build(BuildContext context) {
    //-----------------------------------------------------------------
    String PriceCard_Image = "assest/testbg.jpg";
    int PriceCard_PriceInt = 696969;
    String PriceCard_Price = PriceCard_PriceInt.toString();
    String PriceCard_Title = "Hồ đắc nhân tâm";
    //-----------------------------------------------------------------
    return new SizedBox(
      height: 223,
      width: 155,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 156,
              width: 155,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(PriceCard_Image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  new Container(
                    width: 102,
                    height: 14,
                    child: Text(
                      PriceCard_Title,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: "Lato"),
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
                              PriceCard_HeartInt += 1;
                              if (PriceCard_HeartInt % 2 == 1) {
                                setState(() {
                                  heartuncheck = "assest/heartcheck.png";
                                });
                              }
                              if (PriceCard_HeartInt % 2 == 0) {
                                setState(() {
                                  heartuncheck = "assest/heartuncheck.png";
                                });
                              }
                            })),
                  )
                ],
              ),
            ),
            new Container(
                width: 125,
                height: 19,
                child: Row(
                  children: <Widget>[
                    Text(
                      PriceCard_Price,
                      style: TextStyle(
                          fontSize: 16, fontFamily: "Lato", color: Colors.red),
                    ),
                    Text(
                      "đ",
                      style: TextStyle(
                          fontSize: 16, fontFamily: "Lato", color: Colors.red),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

// ···
}
