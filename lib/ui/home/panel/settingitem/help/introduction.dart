import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Giới thiệu',
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
              child: Expanded(
                child: Container(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                          bottom: Radius.circular(10)),
                      color: const Color(0xffFFFFFF),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15,top: 10),
                        child: Text("Thông tin về ứng dụng:\n"
                            "+phiên bản\n"
                            "+năm phát hành\n"
                            "+nhà phát triển\n"
                            "+Cách sử dụng cơ bản"
                            ,
                            style: TextStyle(
                              fontSize: 15,
                            ))),
                  ),
                )),
              ),
            )));
  }
}
