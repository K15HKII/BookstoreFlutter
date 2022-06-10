import 'package:bookstore_flutter/data/models/voucher/voucher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bookstore_flutter/ui/components/Information.dart';
import 'package:bookstore_flutter/ui/components/voucher.dart';
import 'package:bookstore_flutter/ui/components/setting2.dart';
import 'package:bookstore_flutter/ui/components/support.dart';
class SettingPanel extends StatefulWidget {
  const SettingPanel({Key? key}) : super(key: key);

  @override
  State<SettingPanel> createState() => _SettingPanelState();
}

class _SettingPanelState extends State<SettingPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffBCFEFE)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Gấu mẹ vĩ đại",
                              style: TextStyle(fontSize: 28)),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("Maou", style: TextStyle(fontSize: 15)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
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
                                child: Icon(Icons.person,
                                    color: Color(0xff0C5776)))),
                        Center(
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Information()));
                              },
                              child: const Text(
                                "Thông tin cá nhân",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: "Lato"),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_forward_ios_outlined,
                                    color: Color(0xff0C5776))))
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
                                child: Icon(Icons.sell,
                                    color: Color(0xff0C5776)))),
                        Center(
                          child: Text(
                            "Voucher",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "Lato"),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 3),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_outlined,
                                    color: Color(0xff0C5776)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              VoucherPanel()));
                                },
                              ),
                            ))
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
                    BorderRadius.circular(10),
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
                                child: Icon(Icons.settings,
                                    color: Color(0xff0C5776)))),
                        Center(
                          child: Text(
                            "Cài đặt",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "Lato"),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 3),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_outlined,
                                    color: Color(0xff0C5776)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Setting2()));
                                },
                              ),
                            ))
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
                                child: Icon(Icons.help,
                                    color: Color(0xff0C5776)))),
                        Center(
                          child: Text(
                            "Hỗ trợ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "Lato"),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 3),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_outlined,
                                    color: Color(0xff0C5776)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Support2()));
                                },
                              ),
                            ))

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
                      children: const [
                        Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Align(
                                alignment: Alignment.center,
                                child: Icon(Icons.logout,
                                    color: Color(0xff0C5776)))),
                        Center(
                          child: Text(
                            "Đăng xuất",
                            style: TextStyle(
                                color: Color(0xffE73827),
                                fontSize: 18,
                                fontFamily: "Lato"),
                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ));
  }
}
