import 'package:bookstore_flutter/ui/components/namechange_card.dart';
import 'package:bookstore_flutter/ui/components/password_change_card.dart';
import 'package:bookstore_flutter/ui/components/address.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Support3 extends StatefulWidget {
  const Support3({Key? key}) : super(key: key);

  @override
  State<Support3> createState() => _Support3State();
}

class _Support3State extends State<Support3> {
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
              "Trung tâm hỗ trợ",
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
                                  "Truy cập trang chăm sóc khách hàng",
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

                      ],
                    ),
                  )),
SizedBox(height: 1,),

              Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(


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
                                  "Gửi email",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: "Lato"),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(right: 20),
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
                                  "abcxyz@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Lato"),
                                ),
                              ),
                            )),

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
                                  "Gọi tới số điện thoại",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: "Lato"),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  "0969696969",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Lato"),
                                ),
                              ),
                            )),

                      ],
                    ),
                  )),

            ],
          ),
        ));
  }
}
