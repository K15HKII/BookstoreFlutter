import 'package:flutter/material.dart';
import 'card_samples.dart';

class DeleteAccount3 extends StatefulWidget {
  DeleteAccount3({Key? key}) : super(key: key) {}

  @override
  State<DeleteAccount3> createState() => _DeleteAccount3State();
}

class _DeleteAccount3State extends State<DeleteAccount3> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 376.0,
          height: 120.0,
          decoration: new BoxDecoration(color: Color(0xff98BDC7)),
          child: Column(
            children: [
              SizedBox(
                height: 18,
              ),
              Text(
                "Bạn chắc chắn chưa",
                style: TextStyle(
                    fontFamily: "lato", fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(width: 77,),
                    Container(
                      height: 36,
                      width: 97,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
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
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Xác nhận",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Lato"),
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    Container(
                      height: 36,
                      width: 97,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
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
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Hủy",
                          style: TextStyle(
                              color: Color(0xff0C5776),
                              fontSize: 14,
                              fontFamily: "Lato"),
                        ),
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// ···
}
