import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:flutter/src/rendering/box.dart';

class Registedpage2 extends StatefulWidget {
  const Registedpage2({Key? key}) : super(key: key);

  @override
  State<Registedpage2> createState() => _RegistedpageState();
}

bool _obscureText = true;
bool checkedValue = true;

class _RegistedpageState extends State<Registedpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Color(0xffA9E4E4), Color(0xffFFFAFA)])),
        child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 17, right: 16.64, top: 10),
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assest/background_image.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Text(
                "Đăng kí",
                style: TextStyle(
                    color: Color(0xff001C44),
                    fontSize: 31,
                    fontFamily: 'Lato',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 4),
                        blurRadius: 8.0,
                        color: Color.fromARGB(90, 0, 0, 0),
                      )
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              new Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(height: 51,
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(90, 0, 0, 0),
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ]),
                    child: new TextField(
                      decoration: InputDecoration(
                          labelText: "Tên đăng nhập", border: InputBorder.none),
                    ),
                  )),
                  SizedBox(
                    width: 30,
                  ),
                  new Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(90, 0, 0, 0),
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ]),
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

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
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              new Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(height: 51,
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(90, 0, 0, 0),
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ]),
                    child: new TextField(
                      decoration: InputDecoration(
                          labelText: "Ngày sinh", border: InputBorder.none),
                    ),
                  )),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Container(height: 51,
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(90, 0, 0, 0),
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ]),
                    child: new TextField(
                      decoration: InputDecoration(
                          labelText: "Số điện thoại", border: InputBorder.none),
                      keyboardType: TextInputType.number,
                    ),
                  )),
                  SizedBox(
                    width: 18,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              new Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(height: 51,
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(90, 0, 0, 0),
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ]),
                    child: new TextField(
                      decoration: InputDecoration(
                          labelText: "Email", border: InputBorder.none),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              new Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(height: 51,
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(90, 0, 0, 0),
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ]),
                    child: new TextField(
                      decoration: InputDecoration(
                          labelText: "Mật khẩu",
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          border: InputBorder.none),
                      obscureText: _obscureText,
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              new Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(height: 51,
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(90, 0, 0, 0),
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ]),
                    child: new TextField(
                      decoration: InputDecoration(
                          labelText: "Nhập lại mật khẩu",
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          border: InputBorder.none),
                      obscureText: _obscureText,
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                title: Text(
                  "Tôi chấp nhận điều khoản với chính sách của appname",
                  style: TextStyle(
                      color: Color(0xff001C44),
                      fontFamily: "Lato",
                      fontSize: 14),
                ),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = !checkedValue;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              SizedBox(
                height: 20,
              ),
              new Container(
                height: 55,
                margin: EdgeInsets.symmetric(horizontal: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff0C5776),
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
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Đăng kí",
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: "Lato"),
                  ),
                )),
              ),

            ]),
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
    style: TextStyle(
        fontSize: 31,
        fontFamily: "Lato",
        color: Color(0xff001C44),
        shadows: <Shadow>[
          Shadow(
            offset: Offset(0, 4),
            blurRadius: 8.0,
            color: Color.fromARGB(90, 0, 0, 0),
          )
        ]),
  ),
);

Widget buildAppEntryRow() {
  return new Row(
    children: <Widget>[
      Expanded(
        child: TextField(
          decoration:
              InputDecoration(labelText: "Mật khẩu", border: InputBorder.none),
        ),
      ),
    ],
  );
}
