import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'PriceCardWithStar.dart';
import 'PriceCard.dart';
import 'TopicCard.dart';
import 'BigCardInfo.dart';
import 'BookCard.dart';
import 'BookCardWithPrize.dart';
import 'BookCardWithTotalPrize.dart';

class DesignCard extends StatefulWidget {
  const DesignCard({Key? key}) : super(key: key);

  @override
  State<DesignCard> createState() => _DesignCardState();
}

// Không hiểu vì sao nhưng khi đặt biến heart int bên ngoài này thì bấm trái tím nhiều lần ms đổi qua đổi lại còn build thẳng trên class thì lại không, nên đừng có thay đổi =)))
int heartcheck = 0;
String heartuncheck = "assest/heartuncheck.png";
int PriceCard_HeartInt = 0;
int PriceCardWithStar_HeartInt = 0;
int BigCardInfo_HeartInt=0;

class _DesignCardState extends State<DesignCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[BookCardWithTotalPrize()],
        ));
  }
}







