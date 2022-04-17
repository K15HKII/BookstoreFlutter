import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:huy12345/forgotpass.dart';
import 'registeredpage2.dart';
import 'forgotpass.dart';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstRoute(),
    theme: ThemeData(),
  )
);

    class FirstRoute extends StatefulWidget {
  @override
  State<FirstRoute> createState() => _FirstRouteState();
}
bool _obscureText = true;
    String? _password;
class _FirstRouteState extends State<FirstRoute> {
  @override
      Widget build (BuildContext context){
    return Scaffold(
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

        child:Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height:0,),

            Padding(
              padding: EdgeInsets.only(left: 0, top: 0),

            child:Column(

              children:<Widget>[
                Image.asset('assest/background_image.png'),
            Text("App Name", style: TextStyle(color:Color(0xff001C44), fontSize: 31, fontFamily: 'Lato',
            shadows: <Shadow>[
              Shadow(
                offset: Offset(0,4),
                blurRadius: 8.0,
                color: Color.fromARGB(90, 0, 0, 0),
              )
            ]
            ),)
          ],
            ),
        ),

        Expanded(
            child: Padding(
                  padding: EdgeInsets.only(left:20, top:20,right:20),
              child:Column(
                children: <Widget>[

                 new Container(
                    padding: EdgeInsets.only(left:30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [BoxShadow(
                      color: Color.fromARGB(90, 0, 0, 0),
                      blurRadius: 20,
                      offset: Offset(0,10)
                    )]
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new TextField(
                            decoration:InputDecoration(
                              labelText: "Tên đăng nhập",

                                border:InputBorder.none

                            ),
                          ),




                      ],
                    )
                  ),
                  SizedBox(height: 20,),
                  new Container(
                      padding: EdgeInsets.only(left:30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [BoxShadow(
                              color: Color.fromARGB(90, 0, 0, 0),
                              blurRadius: 20,
                              offset: Offset(0,10)
                          )]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new TextField(
                            decoration:InputDecoration(
                                labelText: "Mật khẩu",
suffixIcon: IconButton(
  icon: Icon(
    Icons.visibility,
  ),
  onPressed: (){
    setState(() {
      _obscureText=!_obscureText;
    });
  },
),
                                border:InputBorder.none

                            ),
                            obscureText: _obscureText,
                            enableSuggestions: false,
                            autocorrect: false,


                          ),




                        ],
                      )
                  ),
                  Container(
                      padding: EdgeInsets.only(left:250, top: 20),
                      child: SizedBox(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPass()));
                          },
                          child: Text('Quên mật khẩu', style: TextStyle(color: Colors.blue),


                        ),
                      )
                  ),
                  ),
                SizedBox(height: 20,),
                  Container(
                    height: 55,
                    margin: EdgeInsets.symmetric(horizontal: 90),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:  Color(0xff001C44),
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
                        child: Text("Đăng nhập", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Lato"),),
                      )
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Đăng nhập bằng tài khoản", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height:10,),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 100),
                      new Container(
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assest/ggicon.png'),
                          ),
                        ),
                        child: Container(
                          child: TextButton(
                            onPressed: null,
                            child: Text(''),
                          ),
                        )
                      ),

                      SizedBox(width:20,),
                      new Container(
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assest/fbicon.png'),
                            ),
                          ),
                          child: Container(
                            child: TextButton(
                              onPressed: null,
                              child: Text(''),
                            ),
                          )
                      )

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(

                    children: <Widget>[
                      SizedBox(width: 70, height: 40,),
                      new Container(
                        child:  Text("Bạn chưa có tài khoản", style: TextStyle(fontSize: 12),),
                      ),
                      SizedBox(width: 5,),
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
                  )






                ]
              )
            )
        )

      ],
    ),

      ),
    );
  }
}
