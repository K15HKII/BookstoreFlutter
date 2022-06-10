import 'package:bookstore_flutter/ui/components/namechange_card.dart';
import 'package:bookstore_flutter/ui/components/notificationpanel.dart';
import 'package:bookstore_flutter/ui/components/password_change_card.dart';
import 'package:bookstore_flutter/ui/components/address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bookstore_flutter/ui/components/permission.dart';
import 'package:bookstore_flutter/ui/components/language.dart';
class Setting2 extends StatefulWidget {
  const Setting2({Key? key}) : super(key: key);

  @override
  State<Setting2> createState() => _Setting2State();
}

class _Setting2State extends State<Setting2> {
  @override
  Widget build(BuildContext context) {
    bool Switchbackground=false;
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
              "Cài đặt",
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
                                  "Thông báo",
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Notification1()));
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
                                  "Riêng tư",
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
                                   //builder: (context) => Permission1()));
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Permission1()));
                                },
                              ),
                            ))
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
                                  "Ngôn ngữ",
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Language1()));
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
                                  "Nền tối",
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
                                 value: Switchbackground ,
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
