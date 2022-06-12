import 'package:bookstore_flutter/ui/home/main_page.dart';
import 'package:flutter/material.dart';
import 'package:bookstore_flutter/ui/components/password_field.dart';
import 'package:bookstore_flutter/ui/authentication/login/register_page.dart';
import 'package:bookstore_flutter/ui/authentication/login/forgot_password_page.dart';
import 'package:bookstore_flutter/ui/assets.dart' as assets;

class Greeting2 extends StatefulWidget {
  const Greeting2({Key? key}) : super(key: key);

  @override
  State<Greeting2> createState() => _Greeting2State();
}

class _Greeting2State extends State<Greeting2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Color(0xffFFFFFF), Color(0xffFFFAFA)])),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 17, right: 16.64, top: 10),
              height: 240,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(assets.backgroundImage),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Text(
              "Trang greeting",
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
            const SizedBox(
              height: 20,
            ),
            AnimatedSwitcher(duration: Duration(seconds: 0), child: Greeting3),
          ],
        ),
      ),
    );
  }
}

Widget Greeting3 = new SizedBox(
    height: 440,
    child: DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
          ),
          color: const Color(0xff0C5776)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 22,
          ),
          Icon(
            Icons.check_circle_outline,
            size: 60,
            color: Color(0xffC0C8CA),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "Chào mừng bạn đến với",
                    style: TextStyle(
                        fontSize: 25, color: Colors.white, fontFamily: "Lato"),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "chúng tôi",
                    style: TextStyle(
                        fontSize: 25, color: Colors.white, fontFamily: "Lato"),
                  ),
                )),
          ),
          SizedBox(
            height: 17,
          ),
          Padding(
            padding: EdgeInsets.only(left: 62, right: 62),
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "Cùng khám phá ứng dụng nhé",
                    style: TextStyle(
                        fontSize: 12, color: Colors.white, fontFamily: "Lato"),
                  ),
                )),
          ),
          SizedBox(
            height: 72,
          ),
          Container(
            height: 48,
            width: 327,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
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
                child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                //setState(()=> Greeting3 = Greeting4);
              },
              child: const Text(
                "Khám phá",
                style: TextStyle(
                    color: Color(0xff001C44), fontSize: 16, fontFamily: "Lato"),
              ),
            )),
          ),
        ],
      ),
    ));
Widget Greeting4 = new SizedBox(
    height: 440,
    child: DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
          ),
          color: const Color(0xff0C5776)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 22,
          ),
          Icon(
            Icons.check_circle_outline,
            size: 40,
            color: Color(0xffC0C8CA),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "Chào mừng bạn đến với aaaaa",
                    style: TextStyle(
                        fontSize: 24, color: Colors.white, fontFamily: "Lato"),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 76, right: 76),
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "chúng tôi",
                    style: TextStyle(
                        fontSize: 20, color: Colors.white, fontFamily: "Lato"),
                  ),
                )),
          ),
          SizedBox(
            height: 17,
          ),
          Padding(
            padding: EdgeInsets.only(left: 76, right: 62),
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "Cùng khám phá ứng dụng nhé",
                    style: TextStyle(
                        fontSize: 12, color: Colors.white, fontFamily: "Lato"),
                  ),
                )),
          ),
          SizedBox(
            height: 72,
          ),
          Container(
            height: 48,
            width: 327,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
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
                child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {},
              child: const Text(
                "Khám phá",
                style: TextStyle(
                    color: Color(0xff001C44), fontSize: 16, fontFamily: "Lato"),
              ),
            )),
          ),
        ],
      ),
    ));
