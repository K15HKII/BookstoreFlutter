import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'PriceCardWithStar.dart';
import 'PriceCard.dart';
import 'TopicCard.dart';

class DesignCard extends StatefulWidget {
  const DesignCard({Key? key}) : super(key: key);

  @override
  State<DesignCard> createState() => _DesignCardState();
}

// Không hiểu vì sao nhưng khi đặt biến heart int bên ngoài này thì bấm trái tím nhiều lần ms đổi qua đổi lại còn build thẳng trên class thì lại không, nên đừng có thay đổi =)))
int heartcheck = 0;
String heartuncheck = "assest/heartuncheck.png";
int PriceCard_HeartInt = 0;
int PriceCardWithStar_HearInt = 0;

class _DesignCardState extends State<DesignCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[DesignCardWithStar()],
        ));
  }
}

Widget BiggerCard() {
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
                image: AssetImage('assest/testbg.jpg'),
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
                width: 170,
                child: Column(
                  children: <Widget>[
                    new Container(
                      width: 170,
                      height: 24,
                      child: Text(
                        "Sách đắc nhân tâm",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "Lato"),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    new Container(
                      width: 170,
                      height: 29,
                      child: Text(
                        "696969đ",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Lato",
                            color: Colors.red),
                      ),
                    ),
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
                          image: AssetImage('assest/starfull.png'),
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
                          image: AssetImage('assest/starfull.png'),
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
                          image: AssetImage('assest/starfull.png'),
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
                          image: AssetImage('assest/starfull.png'),
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
                          image: AssetImage('assest/starhalf.png'),
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
              "2",
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
              "huycutecutecutecutecutecute",
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

Widget Card1WithToTalPrize() {
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
                    image: AssetImage('assest/testbg.jpg'),
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
                        "Hồ đắc nhân tâm",
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
                        "Bìa cứng",
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
                    new Container(
                      width: 48,
                      height: 19,
                      child: Text(
                        "69",
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
                Text(
                  "696.969 đ",
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: "Lato",
                    color: Color(0xff001c44),
                  ),
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
              "Thành tiền 696.696 đ",
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

Widget Card1() {
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
                image: AssetImage('assest/testbg.jpg'),
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
                    "Hồ đắc nhân tâm",
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
                    "Bìa cứng",
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
            "69",
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

Widget Card1WithPrize() {
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
                image: AssetImage('assest/testbg.jpg'),
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
                    "Hồ đắc nhân tâm",
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
                    "Bìa cứng",
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
                    "69",
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
            Text(
              "696.969 đ",
              style: TextStyle(
                fontSize: 11,
                fontFamily: "Lato",
                color: Color(0xff001c44),
              ),
            )
          ],
        )
      ],
    ),
  );
}
