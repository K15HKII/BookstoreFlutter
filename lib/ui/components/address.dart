import 'package:bookstore_flutter/ui/components/namechange_card.dart';
import 'package:bookstore_flutter/ui/components/password_change_card.dart';
import 'package:bookstore_flutter/ui/components/address_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Address extends StatefulWidget {

  Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
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
              "",
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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 24, top: 40),
                  child: Text(
                    "Địa chỉ mặc định",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontFamily: "Lato"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 78,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10),bottom: Radius.circular(10)),
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
                            padding: const EdgeInsets.only(left: 15,right: 40),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "ktx khu a, phường linh trung, thủ đức, và một cái gì đó khá là dài để test độ dài",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: "Lato"),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(right: 45),
                            child: Align(
                              alignment: Alignment.centerRight,

                            )),
                        Padding(
                            padding: const EdgeInsets.only(right: 3),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.delete,
                                    color: Color(0xff0C5776)),
                                tooltip: 'Increase volume by 10',
                                onPressed: () {

                                },
                              ),
                            ))
                      ],
                    ),
                  )),

              SizedBox(
                height: 34,

              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 24, top: 40),
                  child: Text(
                    "Tất cả",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontFamily: "Lato"),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              AddressCard("tinh a", "xa b", "so nha c"),
              SizedBox(
                height: 1,
              ),
              AddressCard("tinh d", "xa f", "so nha wawxa"),
            ],
          ),
        ));
  }
}
