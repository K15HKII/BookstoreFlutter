import 'package:flutter/material.dart';
import 'card_samples.dart';

class NameChangeCard extends StatefulWidget {
  NameChangeCard( {Key? key})
      : super(key: key) {

  }

  @override
  State<NameChangeCard> createState() => _NameChangeCardState();
}

class _NameChangeCardState extends State<NameChangeCard> {
  @override
  Widget build(BuildContext context) {

    return       Material(
      child:  Align(
        alignment: Alignment.center,
        child: Container(
          width: 376.0,
          height: 204.0,
          decoration: new BoxDecoration(
              color: Color(0xff98BDC7)
          ),
          child: Column(
            children: [
              SizedBox(height: 18,),
              Text("Đổi tên", style: TextStyle(fontFamily: "lato",fontSize: 20,color: Colors.black),),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(left: 24,right: 24),
              child: Container(
                height: 55,
                padding: const EdgeInsets.only(left: 24,right: 24),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(90, 0, 0, 0),
                          blurRadius: 20,
                          offset: Offset(0, 10))
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: "Nhập tên mới", border: InputBorder.none),
                ),

              ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 48,
                width: 155,
                margin: const EdgeInsets.symmetric(horizontal: 90),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xff0C5776),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      offset: Offset(0, 4), // Shadow position
                    ),
                  ],
                ),
                child: Center(
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {

                      },
                      child: const Text(
                        "Đăng nhập",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16, fontFamily: "Lato"),
                      ),
                    )),
              ),
            ],
          ),
        ),

      ),
    );

  }

// ···
}
