import 'package:flutter/material.dart';

// Không hiểu vì sao nhưng khi đặt biến heart int bên ngoài này thì bấm trái tím nhiều lần ms đổi qua đổi lại còn build thẳng trên class thì lại không, nên đừng có thay đổi =)))
int heartcheck = 0;
String heartuncheck = "assets/heartuncheck.png";
int PriceCard_HeartInt = 0;
int PriceCardWithStar_HeartInt = 0;
int BigCardInfo_HeartInt = 0;

// variable global--------------------------------------------------------------
String PriceCard_Title = "Hồ đắc nhân tâm";
String PriceCard_Image = "assets/testbg.jpg";
int PriceCard_PriceInt = 0;
//title-image-price
//PriceCard("Con chó biết bay", "assets/testbg.jpg", 34892)
String PriceCardWithStar_Image = "assets/testbg.jpg";
int PriceCardWithStar_PriceInt = 696969;
String PriceCardWithStar_Title = "Sách đắc nhân tâm";
double PriceCardWithStar_StarInt = 4.9;
//title-image-price-rate
//DesignCardWithStar("Con mèo đi hia", "assets/testbg.jpg",696969,4.9)
//1-2 -> starempty 2-4 -> starhalf 4-5 -> starfull
String TopicCard_Topic = "Huycute";
String TopicCard_Image = "assets/testbg.jpg";
//topic-image
//TopicCard("cute", "assets/testbg.jpg")
String BookCard_Title = "Con chó biết bay";
String BookCard_Type = "Bìa cứng";
String BookCard_Image = "assets/testbg.jpg";
int BookCard_AmountInt = 69;
//title-image-amount-type
//BookCard("zigzag","assets/testbg.jpg", 24,"Bìa mềm")
String BookCardWithPrize_Image = "assets/testbg.jpg";
String BookCardWithPrize_Title = "Hồ đắc nhân tâm";
String BookCardWithPrize_Type = "Bìa cứng";
int BookCardWithPrize_AmountInt = 69;
int BookCardWithPrize_PriceInt = 696969;
//title-image-price-amount-type
//BookCardWithPrize("zigzag","assets/testbg.jpg", 8291,11,"Bìa mềm")
String BigCardInfo_Image = "assets/testbg.jpg";
String BigCardInfo_Title = "Sách đắc nhân tâm";
int BigCardInfo_PriceInt = 696969;
double BigCardInfo_StarInt = 4.5;
int BigCardInfo_AmountInt = 2;
String BigCardInfo_Description = "huycutecutecutecutecutecute";
//title-image-price-amount-rate-desc
//BigCardInfo("Huy siêu siêu cute", "assets/testbg.jpg", 20000, 2, 3.5, "Huy siêu cute cute")
String BookCardWithTotalPrize_Image = "assets/testbg.jpg";
String BookCardWithTotalPrize_Title = "Hồ đắc nhân tâm";
String BookCardWithTotalPrize_Type = "Bìa cứng";
int BookCardWithTotalPrize_AmountInt = 10;
int BookCardWithTotalPrize_PriceInt = 6969;
//title-image-price-amount-rate-desc
//BookCardWithTotalPrize("zigzag","assets/testbg.jpg", 8291,11,"Bìa mềm")
String BookCardAdd_Title = "Sách đắc nhân tâm";
String BookCardAdd_Type = "bìa cứng";
String BookCardAdd_Image = "assets/testbg.jpg";
int BookCardAdd_PriceOriginInt = 6000;
int BookCardAdd_CountInt = 0;
//title-image-type-originPrice-amount(start_with_0)
//BookCardAdd("Huy cutee", "assets/testbg.jpg","Bìa siêu mềm",10000,0)
//----------------------------------------------------------------------------------------------------------------------------
