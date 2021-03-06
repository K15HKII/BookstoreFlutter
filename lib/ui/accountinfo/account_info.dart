import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xffBCFEFE)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 135,
                    width: 135,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Maou",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: "Lato",
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
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
                                  child: Text("T??n",
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
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "Maou",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: "Lato"),
                                        ),
                                      ),
                                    ),
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
                  padding: const EdgeInsets.only(top: 2,left: 10,right: 10),
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
                                  child: Text("Email",
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
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "20520327@gm.uit.edu.vn",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: "Lato"),
                                        ),
                                      ),
                                    ),
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
                  padding: const EdgeInsets.only(top: 2,left: 10,right: 10),
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
                                  child: Text("S??? ??i???n tho???i",
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
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "123456789",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: "Lato"),
                                        ),
                                      ),
                                    ),
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
                  padding: const EdgeInsets.only(top: 2,left: 10,right: 10),
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
                                  child: Text("Ng??y sinh",
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
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "1/8/2002",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: "Lato"),
                                        ),
                                      ),
                                    ),
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
                  padding: const EdgeInsets.only(top: 2,left: 10,right: 10),
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
                                  child: Text("Gi???i t??nh",
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
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "Gay",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: "Lato"),
                                        ),
                                      ),
                                    ),
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
                Wrap(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                      child: Column(
                        children: [
                          Container(

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
                              child: Column(
                                children: [Center(
                                  child: Stack(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(top: 15,left: 15),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("?????a ch???",
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
                                                  const EdgeInsets.only(top: 15,right: 15),
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
                                ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 10,left: 15),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("?????a ch???\n",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "Lato",
                                            )),
                                      ))] ,
                              )),
                        ],
                      ),
                    ),
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2,left: 10,right: 10),
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
                                  child: Text("T??i kho???n ng??n h??ng",
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
                  padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
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
                                  child: Text("?????i m???t kh???u",
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
                  padding: const EdgeInsets.only(top: 2, bottom: 30,left: 10,right: 10),
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
                                  child: Text("Li??n k???t m???ng x?? h???i",
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
              ],
            )),
      ),
    );
  }
}
