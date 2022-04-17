import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'registeredpage2.dart';


class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const
      Size.fromHeight(75.0),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          toolbarHeight: 75.0,



          backgroundColor: Colors.white,
          title: Text("Quên mật khẩu",style: TextStyle(color: Colors.black, fontFamily: 'Lato', fontSize: 24),textAlign: TextAlign.center,),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body:
      Container(
        width:double.infinity,
        decoration: BoxDecoration(

            gradient:LinearGradient(
                begin:Alignment.topCenter,
                colors: [
                  Color(0xffA9E4E4),
                  Color(0xffFFFAFA)
                ]
            )
        ),

      child: Column(

        children: <Widget>[
          SizedBox(height: 30,),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 330,

              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff98BDC7)
                ),

                child: Column(
                  children: <Widget>[
                    SizedBox(height: 38,),
                    Text("Nhập số điện thoại hoặc email để nhận mã xác thực",style: TextStyle(color: Colors.white, fontFamily: "Lato", fontSize: 18),textAlign: TextAlign.center,),
                   SizedBox(height: 30,),
                   Padding(
                     padding: EdgeInsets.only(left: 23, right: 23),
                     child: Container(

                       padding: EdgeInsets.only(left:50,),
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25),
                           boxShadow: [BoxShadow(
                               color: Color.fromARGB(90, 0, 0, 0),
                               blurRadius: 20,
                               offset: Offset(0,10)
                           )]
                       ),

                       child:  new TextField(
                         decoration:InputDecoration(
                             labelText: "Nhập số điện thoại/Email",
                             border:InputBorder.none
                         ),
                       ),
                     ),
                   ),
                    SizedBox(height: 40,),
                    Container(

                      height: 55,
                      margin: EdgeInsets.symmetric(horizontal: 100),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                          color:  Color(0xff0C5776),
                        boxShadow: [
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
                            child: Text("Tiếp tục", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Lato"),),
                          )
                      ),
                    ),

                  ],
                ),
              )
          ),
          SizedBox(height: 30,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child:  Text("Bạn chưa có tài khoản?", style: TextStyle(fontSize: 12),),
                ),
                new Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Registedpage2()));
                    },
                    child: Text('Đăng kí', style: TextStyle(color:Color(0xff001C44), fontSize: 27, fontWeight: FontWeight.bold, fontFamily: "Lato", shadows: [Shadow(offset: Offset(0,4),
                      blurRadius: 8.0,
                      color: Color.fromARGB(90, 0, 0, 0),)]),),

                  ),
                )
              ],
            ),
          ),
          Center(

            child:(
                Image.asset(
                  'assest/background_image.png', width: 500.0, height: 240.0,
                )
            )







          )
        ],

      )
      ),
    );

  }
}
