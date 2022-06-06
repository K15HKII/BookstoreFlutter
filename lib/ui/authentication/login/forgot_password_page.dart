import 'package:flutter/material.dart';
import 'register_page.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const
      Size.fromHeight(75.0),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          toolbarHeight: 75.0,



          backgroundColor: Colors.white,
          title: const Text("Quên mật khẩu",style: TextStyle(color: Colors.black, fontFamily: 'Lato', fontSize: 24),textAlign: TextAlign.center,),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body:
      Container(
        width:double.infinity,
        decoration: const BoxDecoration(

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
          const SizedBox(height: 30,),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 330,

              child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff98BDC7)),
                    child: Column(
                  children: <Widget>[
                    const SizedBox(height: 38,),
                    const Text("Nhập số điện thoại hoặc email để nhận mã xác thực",style: TextStyle(color: Colors.white, fontFamily: "Lato", fontSize: 18),textAlign: TextAlign.center,),
                   const SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.only(left: 23, right: 23),
                     child: Container(

                       padding: const EdgeInsets.only(left:50,),
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25),
                           boxShadow: const [BoxShadow(
                               color: Color.fromARGB(90, 0, 0, 0),
                               blurRadius: 20,
                               offset: Offset(0,10)
                           )]
                       ),

                       child:  const TextField(
                         decoration:InputDecoration(
                             labelText: "Nhập số điện thoại/Email",
                             border:InputBorder.none
                         ),
                       ),
                     ),
                   ),
                    const SizedBox(height: 40,),
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
                            onPressed: () { },
                            child: const Text("Tiếp tục", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Lato"),),
                          )
                      ),
                    ),

                  ],
                ),
              )
          ),
          const SizedBox(height: 30,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child:  const Text("Bạn chưa có tài khoản?", style: TextStyle(fontSize: 12),),
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                    },
                    child: const Text('Đăng kí', style: TextStyle(color:Color(0xff001C44), fontSize: 27, fontWeight: FontWeight.bold, fontFamily: "Lato", shadows: [Shadow(offset: Offset(0,4),
                      blurRadius: 8.0,
                      color: Color.fromARGB(90, 0, 0, 0),)]),),

                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25.64, right: 8, top: 32),
            height: 212,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_image.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],

      )
      ),
    );

  }
}
