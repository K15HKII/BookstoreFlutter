import 'package:bookstore_flutter/ui/components/namechange_card.dart';
import 'package:bookstore_flutter/ui/components/password_change_card.dart';
import 'package:bookstore_flutter/ui/components/address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Permission1 extends StatefulWidget {
  const Permission1({Key? key}) : super(key: key);

  @override
  State<Permission1> createState() => _Permission1State();
}

class _Permission1State extends State<Permission1> {
  @override
  Widget build(BuildContext context) {
    bool Camera=false;
    bool Gallery=false;
    bool Location=false;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75.0),
          child: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black, //change your color here
            ),
            toolbarHeight: 75.0,
            backgroundColor: Colors.white,
            title: const Text(
              "Riêng tư",
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Lato', fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 27,),
              Padding(padding: EdgeInsets.only(left: 24)
                ,child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Chọn sự riêng tư bạn muốn cho phép",
                      style: TextStyle(
                          fontSize: 12, fontFamily: "Lato"),
                    )),),
              SizedBox(height: 16,),
              Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(10)),
                    color: const Color(0xffFFFFFF),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Camera",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: "Lato"),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(right: 45),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  //Navigator.push(
                                  //context,
                                  //MaterialPageRoute(
                                  // builder: (context) => Information()));
                                },
                                child: const Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Lato"),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: CupertinoSwitch(
                                  value: Camera ,
                                  onChanged:(bool blackscreenvalue){
                                    //khong biet cach setstate
                                  } ,
                                )))
                      ],
                    ),
                  )),
              SizedBox(height: 1,),
              Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.vertical(),
                    color: const Color(0xffFFFFFF),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Thư viện ảnh",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: "Lato"),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(right: 45),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  //Navigator.push(
                                  //context,
                                  //MaterialPageRoute(
                                  // builder: (context) => Information()));
                                },
                                child: const Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Lato"),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: CupertinoSwitch(
                                  value: Gallery ,
                                  onChanged:(bool blackscreenvalue){
                                    //khong biet cach setstate
                                  } ,
                                )))
                      ],
                    ),
                  )),
              SizedBox(height: 1,),
              Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10)),
                    color: const Color(0xffFFFFFF),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Vị trí",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: "Lato"),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(right: 45),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  //Navigator.push(
                                  //context,
                                  //MaterialPageRoute(
                                  // builder: (context) => Information()));
                                },
                                child: const Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Lato"),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: CupertinoSwitch(
                                  value: Location ,
                                  onChanged:(bool blackscreenvalue){
                                    //khong biet cach setstate
                                  } ,
                                )))
                      ],
                    ),
                  )),

            ],
          ),
        ));
  }
}
