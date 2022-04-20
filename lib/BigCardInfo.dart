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

class BigCardInfo extends StatefulWidget {
  BigCardInfo(String Title, String Image, int Price, int Amount, double Rate,
      String Desc,
      {Key? key})
      : super(key: key) {
    BigCardInfo_Title = Title;
    BigCardInfo_Image = Image;
    BigCardInfo_PriceInt = Price;
    BigCardInfo_AmountInt = Amount;
    BigCardInfo_StarInt = Rate;
    BigCardInfo_Description = Desc;
  }

  @override
  State<BigCardInfo> createState() => _BigCardInfoState();
}

class _BigCardInfoState extends State<BigCardInfo> {
  @override
  Widget build(BuildContext context) {
    //----------------------------------------------------------------
    String starfull = "assest/starfull.png";
    String starhalf = "assest/starhalf.png";
    String starempty = "assest/starempty.png";
    String star1=starfull;
    String star2=starfull;
    String star3=starfull;
    String star4=starfull;
    String star5=starfull;
    if(BigCardInfo_StarInt>4.75){}
    if(BigCardInfo_StarInt<=4.75&&BigCardInfo_StarInt>4.25){
      star5=starhalf;
    }
    if(BigCardInfo_StarInt<=4.25&&BigCardInfo_StarInt>3.75){
      star5=starempty;
    }
    if(BigCardInfo_StarInt<=3.75&&BigCardInfo_StarInt>3.25){
      star5=starempty;
      star4=starhalf;
    }
    if(BigCardInfo_StarInt<=3.25&&BigCardInfo_StarInt>2.75){
      star5=starempty;
      star4=starempty;
    }
    if(BigCardInfo_StarInt<=2.75&&BigCardInfo_StarInt>2.25){
      star3=starhalf;
      star5=starempty;
      star4=starempty;
    }
    if(BigCardInfo_StarInt<=2.25&&BigCardInfo_StarInt>1.75){
      star4=starempty;
      star5=starempty;
      star3=starempty;
    }
    if(BigCardInfo_StarInt<=1.75&&BigCardInfo_StarInt>1.25){
      star2=starhalf;
      star5=starempty;
      star4=starempty;
      star3=starempty;
    }
    if(BigCardInfo_StarInt<=1.25&&BigCardInfo_StarInt>0.75){
      star4=starempty;
      star5=starempty;
      star3=starempty;
      star2=starempty;
    }
    if(BigCardInfo_StarInt<=0.75&&BigCardInfo_StarInt>0.25){
      star1=starhalf;
      star5=starempty;
      star4=starempty;
      star3=starempty;
      star2=starempty;
    }
    if(BigCardInfo_StarInt<=0.25){
      star5=starempty;
      star4=starempty;
      star3=starempty;
      star2=starempty;
      star1=starempty;
    }
    String BigCardInfo_Price = BigCardInfo_PriceInt.toString();
    String BigCardInfo_Amount = BigCardInfo_AmountInt.toString();
    //----------------------------------------------------------------
    return new SizedBox(
      height: 525,
      width: 375,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: 375,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(BigCardInfo_Image),
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
                  height: 59,
                  width: 320,
                  child: Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Container(
                            width: 250,
                            child: Text(
                              BigCardInfo_Title,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: "Lato"),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            width: 50,
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
                                      BigCardInfo_HeartInt += 1;
                                      if (BigCardInfo_HeartInt % 2 == 1) {
                                        setState(() {
                                          heartuncheck =
                                              "assest/heartcheck.png";
                                        });
                                      }
                                      if (BigCardInfo_HeartInt % 2 == 0) {
                                        setState(() {
                                          heartuncheck =
                                              "assest/heartuncheck.png";
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
                          Text(
                            BigCardInfo_Price,
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Lato",
                                color: Colors.red),
                          ),
                          Text(
                            "đ",
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Lato",
                                color: Colors.red),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            new Row(
              children: <Widget>[
                SizedBox(
                  width: 16,
                ),
                new Container(
                  height: 24,
                  width: 136,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 3.44,
                      ),
                      new Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star1),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.89,
                      ),
                      new Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star2),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.89,
                      ),
                      new Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star3),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.89,
                      ),
                      new Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star4),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.89,
                      ),
                      new Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star5),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            new Container(
              height: 18,
              width: 350,
              child: Text(
                "Số lượng còn hàng",
                style: TextStyle(
                    fontSize: 16, fontFamily: "Lato", color: Color(0xff636363)),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            new Container(
              height: 19,
              width: 350,
              child: Text(
                BigCardInfo_Amount,
                style: TextStyle(
                    fontSize: 20, fontFamily: "Lato", color: Colors.red),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            new Container(
              height: 18,
              width: 350,
              child: Text(
                "Mô tả",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  color: Color(0xff636363),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            new Container(
              height: 18,
              width: 350,
              child: Text(
                BigCardInfo_Description,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

// ···
}
