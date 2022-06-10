import 'package:bookstore_flutter/ui/components/namechange_card.dart';
import 'package:bookstore_flutter/ui/components/password_change_card.dart';
import 'package:bookstore_flutter/ui/components/address.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Support2 extends StatefulWidget {
  const Support2({Key? key}) : super(key: key);

  @override
  State<Support2> createState() => _Support2State();
}

class _Support2State extends State<Support2> {
  @override
  Widget build(BuildContext context) {
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
              "Hỗ trợ",
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
                                  "Trung tâm hỗ trợ",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: "Lato"),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(right: 45),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NameChangeCard()));
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
                            padding: const EdgeInsets.only(right: 3),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_outlined,
                                    color: Color(0xff0C5776)),

                                onPressed: () {
                                },
                              ),
                            ))
                      ],
                    ),
                  )),


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
                                  "Giới thiệu",
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
                                child: Icon(Icons.arrow_forward_ios_outlined,
                                    color: Color(0xff0C5776))))
                      ],
                    ),
                  )),
              SizedBox(
                height: 16,
              ),

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
                                  "Điều khoản",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: "Lato"),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(right: 45),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {},
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
                            padding: const EdgeInsets.only(right: 3),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_outlined,
                                    color: Color(0xff0C5776)),
                                onPressed: () {
                                },
                              ),
                            ))
                      ],
                    ),
                  )),
              SizedBox(
                height: 1,
              ),
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
                                  "Yêu cầu xóa tài khoản",
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
                                child: Icon(Icons.arrow_forward_ios_outlined,
                                    color: Color(0xff0C5776))))
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
