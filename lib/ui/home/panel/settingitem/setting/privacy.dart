import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riêng tư',
          style: TextStyle(
              fontSize: 23, fontFamily: "Lato", color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffBCFEFE)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10,bottom: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Chọn sự riêng tư bạn muốn cho phép",
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 2),
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
                                child: Text("Camera",
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
                                          child: FlutterSwitch(
                                            width: 50,
                                            height: 25,
                                            valueFontSize: 0,
                                            toggleSize: 20.0,
                                            value: status,
                                            borderRadius: 30.0,
                                            padding: 3,
                                            showOnOff: true,
                                            onToggle: (val) {
                                              setState(() {
                                                status = val;
                                              });
                                            },
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
                                child: Text("Thư viện Ảnh",
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
                                          child: FlutterSwitch(
                                            width: 50,
                                            height: 25,
                                            valueFontSize: 0,
                                            toggleSize: 20.0,
                                            value: status,
                                            borderRadius: 30.0,
                                            padding: 3,
                                            showOnOff: true,
                                            onToggle: (val) {
                                              setState(() {
                                                status = val;
                                              });
                                            },
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
                                child: Text("Vị trí",
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
                                          child: FlutterSwitch(
                                            width: 50,
                                            height: 25,
                                            valueFontSize: 0,
                                            toggleSize: 20.0,
                                            value: status,
                                            borderRadius: 30.0,
                                            padding: 3,
                                            showOnOff: true,
                                            onToggle: (val) {
                                              setState(() {
                                                status = val;
                                              });
                                            },
                                          )))
                                ]),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
