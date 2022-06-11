import 'package:bookstore_flutter/ui/components/namechange_card.dart';
import 'package:bookstore_flutter/ui/components/password_change_card.dart';
import 'package:bookstore_flutter/ui/components/address.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TOS extends StatefulWidget {
  const TOS({Key? key}) : super(key: key);

  @override
  State<TOS> createState() => _TOSState();
}

class _TOSState extends State<TOS> {
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
              "Điều khoản",
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
              Padding(padding: EdgeInsets.only(left: 20,right: 20),
                child: Container(
                    height: 549,width: 327,
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
                              padding: const EdgeInsets.only(left: 12, top: 12),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Huy cute aaaaaaaaaaaaaaaaaaaaaaaaaa",
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


              ),
            ],
          ),
        ));
  }
}
