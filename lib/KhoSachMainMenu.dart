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
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'PriceCardWithStar.dart';
import 'SearchPanel.dart';
import 'package:flutter/cupertino.dart';

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
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            useRootNavigator: true,
                                            builder: (
                                              BuildContext context,
                                            ) {
                                              return SearchPanel();
                                            });
                                      },
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
          SizedBox(
            height: 11,
          ),
          Padding(
            padding: EdgeInsets.only(left: 23.5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 37,
              child: Text(
                "Kho sách",
                style: TextStyle(fontFamily: "Lato", fontSize: 31),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 514,
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                        backgroundColor: Color(0xff001C44),
                        unselectedBackgroundColor: Color(0xffCDD6D9),
                        labelStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                        radius: 100,
                        tabs: [
                          Tab(
                            child: new Container(
                              width: 56,
                              height: 36,
                              child: Icon(Icons.home),
                            ),
                          ),
                          Tab(
                              child: new Container(
                                  width: 69,
                                  child: Text(
                                    "Tất cả",
                                    textAlign: TextAlign.center,
                                  ))),
                          Tab(
                              child: new Container(
                                  width: 87,
                                  child: Text(
                                    "Phổ biến",
                                    textAlign: TextAlign.center,
                                  ))),
                          Tab(
                              child: new Container(
                                  width: 83,
                                  child: Text(
                                    "Gần đây",
                                    textAlign: TextAlign.center,
                                  ))),
                          Tab(
                              child: new Container(
                                  width: 118,
                                  child: Text(
                                    "Dành cho tôi",
                                    textAlign: TextAlign.center,
                                  ))),
                        ]),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 425,
                      width: 350,
                      child: TabBarView(
                        children: [
                          new Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: ListView(
                                children: [
                                  new Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                ],
                                scrollDirection: Axis.vertical,
                              ),
                            ),
                          ),
                          GridView.count(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(bottom: 200),
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 12,
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 3,
                            children: <Widget>[
                              Container(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              Container(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              Container(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              Container(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              Container(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              Container(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("AAAAAAAAAa",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                            ],
                          ),
                          Icon(Icons.directions_bike),
                          Icon(Icons.directions_car),
                          Icon(Icons.directions_transit),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: '',
          ),
        ],
      ),
    );
  }

// ···
}
