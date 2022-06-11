import 'package:bookstore_flutter/ui/components/namechange_card.dart';
import 'package:bookstore_flutter/ui/components/password_change_card.dart';
import 'package:bookstore_flutter/ui/components/address.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bookstore_flutter/ui/components/deleteaccount2.dart';
class DeleteAccount extends StatefulWidget {
  const DeleteAccount({Key? key}) : super(key: key);

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
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
              "Yêu cầu xóa tài khoản",
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
              Padding(padding: EdgeInsets.only(left: 44)
                ,child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nhập lí do yêu cầu xóa tài khoản",
                      style: TextStyle(
                          fontSize: 14, fontFamily: "Lato"),
                    )),),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Container(
                  height: 176,width: 328,
                  padding: const EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(90, 0, 0, 0),
                            blurRadius: 20,
                            offset: Offset(0, 10))
                      ]),
                  child: const TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                        labelText: "Place holder", border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 65,),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => DeleteAccount2()));
                      },
                      child: const Text(
                        "Tiếp tục",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16, fontFamily: "Lato"),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
