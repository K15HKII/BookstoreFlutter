import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:huy12345/BookCardAdd.dart';
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
int BigCardInfo_HeartInt = 0;

// variable global--------------------------------------------------------------
String PriceCard_Title = "Hồ đắc nhân tâm";
String PriceCard_Image = "assest/testbg.jpg";
int PriceCard_PriceInt = 0;
//title-image-price
//PriceCard("Con chó biết bay", "assest/testbg.jpg", 34892)
String PriceCardWithStar_Image = "assest/testbg.jpg";
int PriceCardWithStar_PriceInt = 696969;
String PriceCardWithStar_Title = "Sách đắc nhân tâm";
double PriceCardWithStar_StarInt = 4.9;
//title-image-price-rate
//DesignCardWithStar("Con mèo đi hia", "assest/testbg.jpg",696969,4.9)
String TopicCard_Topic = "Huycute";
String TopicCard_Image = "assest/testbg.jpg";
//topic-image
//TopicCard("cute", "assest/testbg.jpg")
String BookCard_Title = "Con chó biết bay";
String BookCard_Type = "Bìa cứng";
String BookCard_Image = "assest/testbg.jpg";
int BookCard_AmountInt = 69;
//title-image-amount-type
//BookCard("zigzag","assest/testbg.jpg", 24,"Bìa mềm")
String BookCardWithPrize_Image = "assest/testbg.jpg";
String BookCardWithPrize_Title = "Hồ đắc nhân tâm";
String BookCardWithPrize_Type = "Bìa cứng";
int BookCardWithPrize_AmountInt = 69;
int BookCardWithPrize_PriceInt = 696969;
//title-image-price-amount-type
//BookCardWithPrize("zigzag","assest/testbg.jpg", 8291,11,"Bìa mềm")
String BigCardInfo_Image = "assest/testbg.jpg";
String BigCardInfo_Title = "Sách đắc nhân tâm";
int BigCardInfo_PriceInt = 696969;
double BigCardInfo_StarInt = 4.5;
int BigCardInfo_AmountInt = 2;
String BigCardInfo_Description = "huycutecutecutecutecutecute";
//title-image-price-amount-rate-desc
//BigCardInfo("Huy siêu siêu cute", "assest/testbg.jpg", 20000, 2, 3.5, "Huy siêu cute cute")
String BookCardWithTotalPrize_Image = "assest/testbg.jpg";
String BookCardWithTotalPrize_Title = "Hồ đắc nhân tâm";
String BookCardWithTotalPrize_Type = "Bìa cứng";
int BookCardWithTotalPrize_AmountInt = 10;
int BookCardWithTotalPrize_PriceInt = 6969;
//title-image-price-amount-rate-desc
//BookCardWithTotalPrize("zigzag","assest/testbg.jpg", 8291,11,"Bìa mềm")
String BookCardAdd_Title = "Sách đắc nhân tâm";
String BookCardAdd_Type = "bìa cứng";
String BookCardAdd_Image = "assest/testbg.jpg";
int BookCardAdd_PriceOriginInt = 6000;
int BookCardAdd_CountInt = 0;
//title-image-type-originPrice-amount(start_with_0)
//BookCardAdd("Huy cutee", "assest/testbg.jpg","Bìa siêu mềm",10000,0)
//----------------------------------------------------------------------------------------------------------------------------

class _DesignCardState extends State<DesignCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[],
        ));
  }
}
