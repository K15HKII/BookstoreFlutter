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

class KhoSachMainMenu extends StatefulWidget {
  const KhoSachMainMenu({Key? key}) : super(key: key);

  @override
  State<KhoSachMainMenu> createState() => _KhoSachMainMenuState();
}

class _KhoSachMainMenuState extends State<KhoSachMainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBCFEFE),
      body: Column(
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 99,
            child: new Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Container(
                      width: 241,
                      height: 51,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(90, 0, 0, 0),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                              icon: new Icon(Icons.search), onPressed: null),
                          new SizedBox(
                            width: 140,
                            height: 51,
                            child: new TextField(
                              decoration: new InputDecoration(
                                labelText: "Tìm kiếm",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          new Container(
                              height: 18,
                              width: 14,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assest/filtericon.png")),
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
                      )),
                ),
                SizedBox(
                  width: 17.88,
                ),
                new Container(
                  height: 26,
                  width: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assest/bellicon.png"),
                    ),
                  ),
                  child: Container(
                      child: TextButton(child: Text(""), onPressed: () {})),
                ),
                SizedBox(
                  width: 19.22,
                ),
                new Container(
                  height: 26.67,
                  width: 26.68,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assest/shoppingcarticon.png"),
                    ),
                  ),
                  child: Container(
                      child: TextButton(child: Text(""), onPressed: () {})),
                ),
              ],
            ),
          ),
          SizedBox(height: 11,),
          Padding(
            padding: EdgeInsets.only(left: 23.5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 37,
              child: Text(
                "Đánh giá",
                style: TextStyle(fontFamily: "Lato", fontSize: 31),
              ),
            ),
          ),
        ],
      ),
    );
  }

// ···
}
