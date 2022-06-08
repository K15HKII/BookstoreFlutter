import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HelpInfo extends StatefulWidget {
  const HelpInfo({Key? key}) : super(key: key);

  @override
  State<HelpInfo> createState() => _HelpInfoState();
}

class _HelpInfoState extends State<HelpInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trung tâm hỗ trợ',
          style: TextStyle(
              fontSize: 23, fontFamily: "Lato", color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffBCFEFE)),
        child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
                                  child: Text("Truy cập trang chăm sóc khách hàng",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Lato",
                                      )),
                                )),

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
                                  child: Text("Gửi email",
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
                                            child: Text(
                                              'abc@gmail.com',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "Lato"
                                              ),
                                                )))
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
                                  child: Text('Gọi tới số điện thoại',
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
                                            child: Text(
                                                '0123456x',
                                              style: TextStyle(
                                                fontFamily: "Lato",
                                                fontSize: 18
                                              ),
                                            )))
                                  ]),
                            ),
                          ],
                        ),
                      )),
                )
              ],
            )
        ),
      ),
    );
  }
}
