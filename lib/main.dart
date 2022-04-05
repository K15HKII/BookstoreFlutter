import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstRoute(),
    theme: ThemeData(),
  )
);

    class FirstRoute extends StatelessWidget {
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
                  SizedBox(height:20,),
                  Container(
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
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(),

                          child:TextField(
                            decoration:InputDecoration(
                              labelText: "Tên đăng nhập",

                                border:InputBorder.none

                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(),

                          child:TextField(
                            decoration:InputDecoration(
                                labelText: "Mật khẩu",

                                border:InputBorder.none

                            ),
                          ),
                        ),

                      ],
                    )
                  ),
                  Container(
                      padding: EdgeInsets.only(left:250, top: 20),
                      child: SizedBox(
                        child:Text(
                          "Quên mật khẩu?",
                          style: TextStyle(color: Colors.blue),
                        ) ,
                      )
                  ),
                SizedBox(height: 20,),
                  Container(
                    height: 55,
                    margin: EdgeInsets.symmetric(horizontal: 90),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:  Color(0xff001C44)
                    ),
                    child: Center(
                      child: Text("Đăng nhập", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Lato"),),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Đăng nhập bằng tài khoản", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height:10,),
                  Row(
                    children: <Widget>[
                      Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue
                        ),
                        child: Center(
                          child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)
                        ),
                      ),
                  ),
                      SizedBox(width:30,),
                      Expanded(child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black
                        ),
                        child: Center(
                            child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)
                        ),
                      )
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Bạn chưa có tài khoản", style: TextStyle(fontSize: 12),),
                  ElevatedButton( child: const Text("Đăng kí", style: TextStyle(color: Color(0xff024c5e), fontSize: 20),),

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Registedpage()));
                  },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),

                    ),
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

class Registedpage extends StatelessWidget {
  const Registedpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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



      child:Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assest/background_image.png', width: 500.0, height: 170.0,
          ),
          DangKiText,
          Padding(padding: EdgeInsets.only(bottom: 20),),
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
            child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Flexible(
                    child: new TextField(
                      decoration:InputDecoration(
                          labelText: "Tên đăng nhập",
                          border:InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 50.0,),
                  new DropdownButton(

                    // Initial Value
                    value: dropdownvalue,
                    hint: Text(
                      "Huycute"
                    ),
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {

                        dropdownvalue = newValue!;
                    },
                  ),
                ],
              ),
            ),
          Padding(padding: EdgeInsets.only(bottom: 20),),
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
        child:
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
        new Flexible(
        child: new TextField(
        decoration:InputDecoration(
        labelText: "Ngày sinh",
            border:InputBorder.none
           ),
          ),
    ),
        SizedBox(width: 50.0,),
        new Flexible(
    child: new TextField(
    decoration:InputDecoration(
    labelText: "Số điện thoại",
    border:InputBorder.none
    ),
    ),
    ),
    ]
      ),
      ),
          Padding(padding: EdgeInsets.only(bottom: 20),),
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
    child: new TextField(
      decoration:InputDecoration(
          labelText: "Email",
          border:InputBorder.none
      ),
    ),
        ),
          Padding(padding: EdgeInsets.only(bottom: 20),),
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
            child: new TextField(
              decoration:InputDecoration(
                  labelText: "Mật khẩu",

                  border:InputBorder.none
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20),),
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
            child: new TextField(
              decoration:InputDecoration(
                  labelText: "Nhập lại mật khẩu",

                  border:InputBorder.none
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
          ),
          new Center(
            child: (
              Container(
                padding: EdgeInsets.only(right: 150, top: 20),
                child: Text(
                  'Điều khoản chính sách',
                  style: TextStyle(fontSize: 15, fontFamily: "Lato",color: Color(0xff001C44),
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0,4),
                          blurRadius: 8.0,
                          color: Color.fromARGB(90, 0, 0, 0),
                        )]),
                ),
              )

          )
          ),
          Padding(padding: EdgeInsets.only(bottom: 30),),
          new Container(

            height: 55,
            margin: EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color:  Color(0xff001C44)
            ),
            child: Center(
              child: Text("Đăng kí", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Lato"),),
            ),
          ),








        ]
      ),
    ),
    );
  }
}


String dropdownvalue = 'Nam';

// List of items in our dropdown menu
var items = [
  'Nam',
  'Nữ',
  'Không biết',
];

Widget DangKiText = const Padding(
  padding: EdgeInsets.only(left: 148),
  child: Text(
    'Đăng kí',
    style: TextStyle(fontSize: 31, fontFamily: "Lato",color: Color(0xff001C44),
        shadows: <Shadow>[
        Shadow(
        offset: Offset(0,4),
    blurRadius: 8.0,
    color: Color.fromARGB(90, 0, 0, 0),
  )]),
  ),
);


Widget buildAppEntryRow() {
  return new  Row(
    children: <Widget>[
      Expanded(child: TextField(
        decoration:InputDecoration(
            labelText: "Mật khẩu",

            border:InputBorder.none

        ),
      ),
      ),

    ],
  );
}