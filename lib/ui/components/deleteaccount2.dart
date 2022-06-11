import 'package:flutter/material.dart';
import 'card_samples.dart';
import 'package:bookstore_flutter/ui/components/deleteaccount3.dart';
class DeleteAccount2 extends StatefulWidget {
  DeleteAccount2( {Key? key})
      : super(key: key) {

  }

  @override
  State<DeleteAccount2> createState() => _DeleteAccount2State();
}

class _DeleteAccount2State extends State<DeleteAccount2> {
  @override
  Widget build(BuildContext context) {

    return       Material(
      child:  Align(
        alignment: Alignment.center,
        child: Container(
          width: 376.0,
          height: 270.0,
          decoration: new BoxDecoration(
              color: Color(0xff98BDC7)
          ),
          child: Column(
            children: [
              SizedBox(height: 18,),
              Text("Nhập mật khẩu", style: TextStyle(fontFamily: "lato",fontSize: 20,color: Colors.black),),
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
                        labelText: "Nhập mật khẩu", border: InputBorder.none),
                  ),

                ),
              ),
              SizedBox(height: 20,),
              Container(

                height: 55,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                  color:  const Color(0xff0C5776),
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
                            MaterialPageRoute(builder: (context) => DeleteAccount3()));
                      },
                      child: const Text("Xác nhận", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Lato"),),
                    )
                ),
              ),
              SizedBox(height: 10,),
              Container(

                height: 55,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                  color:  Colors.white,
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
                      onPressed: () { },
                      child: const Text("Hủy", style: TextStyle(color: Color(0xff0C5776), fontSize: 20, fontFamily: "Lato"),),
                    )
                ),
              ),
            ],
          ),
        ),

      ),
    );

  }

// ···
}
