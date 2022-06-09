import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
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
        body: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/testbg.jpg"),
                  radius: 75,
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Huy cute",
              style: TextStyle(fontSize: 24, fontFamily: "Lato"),
            ),
            SizedBox(height: 29,),
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
                              child: Text("Tên",style: TextStyle(
                                fontSize: 16,fontFamily: "Lato"
                              ),))),

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
                                  "Huy cute cute cute",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Lato"),
                                ),
                              ),)),
                      Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_forward_ios_outlined,
                                  color: Color(0xff0C5776))))
                    ],
                  ),
                )),
          ],
        ));
  }
}
