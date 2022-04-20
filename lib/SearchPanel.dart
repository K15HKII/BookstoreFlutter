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

class SearchPanel extends StatefulWidget {
  const SearchPanel({Key? key}) : super(key: key);

  @override
  State<SearchPanel> createState() => _SearchPanelState();
}

RangeValues _currentRangeValues = const RangeValues(0, 5000000);
int aInt = 0;
int bInt = 5000000;
String a = aInt.toString();
String b = bInt.toString();

//a la bien chi diem dau cua slider, b la bien chi diem cuoi cua slider
class _SearchPanelState extends State<SearchPanel> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 530,
      width: 375,
      decoration: BoxDecoration(color: Color(0xff98BDC7)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 28,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 281),
            child: Container(
              height: 24,
              width: 70,
              child: Text(
                "Sắp xếp",
                style: TextStyle(fontFamily: "Lato", fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Container(
              height: 144,
              width: 327,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 48,
                    width: 327,
                    decoration: BoxDecoration(),
                    child: Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(
                              left: 18,
                              top: 14,
                              bottom: 14,
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assest/uncheckcircle.png"))),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 19,
                          width: 180,
                          child: Text(
                            "Giá từ cao xuống thấp",
                            style: TextStyle(fontFamily: "Lato", fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 327,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(
                              left: 18,
                              top: 14,
                              bottom: 14,
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assest/uncheckcircle.png"))),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 19,
                          width: 180,
                          child: Text(
                            "Giá từ thấp lên cao",
                            style: TextStyle(fontFamily: "Lato", fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 327,
                    child: Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(
                              left: 18,
                              top: 14,
                              bottom: 14,
                            ),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assest/uncheckcircle.png"))),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 19,
                          width: 180,
                          child: Text(
                            "Đánh giá cao",
                            style: TextStyle(fontFamily: "Lato", fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Container(
                  width: 153,
                  height: 24,
                  child: Text(
                    "Giá trong khoảng",
                    style: TextStyle(fontFamily: "Lato", fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 65,
              ),
              Container(
                height: 14,
                width: 120,
                child: Row(
                  children: <Widget>[
                    Text(
                      a,
                      style: TextStyle(fontFamily: "Lato", fontSize: 13),
                    ),
                    Text(
                      " - ",
                      style: TextStyle(fontFamily: "Lato", fontSize: 13),
                    ),
                    Text(
                      b,
                      style: TextStyle(fontFamily: "Lato", fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25,
              right: 28,
            ),
            child: Container(
              width: 328,
              child: RangeSlider(
                values: _currentRangeValues,
                max: 5000000,
                divisions: 5,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    aInt = _currentRangeValues.start.toInt();
                    bInt = _currentRangeValues.end.toInt();
                    _currentRangeValues = values;
                    a = aInt.toString();
                    b = bInt.toString();
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Container(
                  width: 153,
                  height: 24,
                  child: Text(
                    "Đánh giá",
                    style: TextStyle(fontFamily: "Lato", fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 101),
            child: new Container(
              height: 24,
              width: 250,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 3.44),
                    child: Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assest/starfull.png"))),
                    ),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 57.44,
                  ),
                  Text(
                    "5 sao",
                    style: TextStyle(fontFamily: "Lato", fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 101),
            child: new Container(
              height: 24,
              width: 250,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 3.44),
                    child: Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assest/starfull.png"))),
                    ),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  SizedBox(
                    width: 50.44,
                  ),
                  Text(
                    "4 sao trở lên",
                    style: TextStyle(fontFamily: "Lato", fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 101),
            child: new Container(
              height: 24,
              width: 250,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 3.44),
                    child: Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assest/starfull.png"))),
                    ),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  SizedBox(
                    width: 17.11,
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  SizedBox(
                    width: 50.44,
                  ),
                  Text(
                    "3 sao trở lên",
                    style: TextStyle(fontFamily: "Lato", fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 101),
            child: new Container(
              height: 24,
              width: 250,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 3.44),
                    child: Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assest/starfull.png"))),
                    ),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  Container(
                    height: 16.36,
                    width: 17.11,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/starfull.png"))),
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  SizedBox(
                    width: 17.11,
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  SizedBox(
                    width: 17.11,
                  ),
                  SizedBox(
                    width: 14.89,
                  ),
                  SizedBox(
                    width: 50.44,
                  ),
                  Text(
                    "2 sao trở lên",
                    style: TextStyle(fontFamily: "Lato", fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// ···
}
