import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hỗ trợ',
          style: TextStyle(fontSize: 23, fontFamily: "Lato", color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xffBCFEFE)),
          child: Padding(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
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
                                  child: Text("Trung tâm hỗ trợ",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Lato",
                                      )),
                                )),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding:
                                        const EdgeInsets.only(right: 15),
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Color(0xff0C5776))))
                                  ]),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Container(
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
                                  child: Text("Giới thiệu",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Lato",
                                      )),
                                )),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding:
                                        const EdgeInsets.only(right: 15),
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Color(0xff0C5776))))
                                  ]),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
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
                                  child: Text("Điều khoản",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Lato",
                                      )),
                                )),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding:
                                        const EdgeInsets.only(right: 15),
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Color(0xff0C5776))))
                                  ]),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Container(
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
                                  child: Text("Yêu cầu xoá tài khoản",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Lato",
                                      )),
                                )),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding:
                                        const EdgeInsets.only(right: 15),
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Color(0xff0C5776))))
                                  ]),
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
          )),
    );
  }
}
