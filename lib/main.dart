import 'package:flutter/material.dart';
import 'package:bookstore_flutter/ui/components/forgot_password_page.dart';
import 'ui/components/register_page.dart';
import 'ui/components/forgot_password_page.dart';
import 'navigate.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstRoute(),
      theme: ThemeData(),
    ));

class FirstRoute extends StatefulWidget {
  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

bool _obscureText = true;
String? _password;

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Color(0xffA9E4E4), Color(0xffFFFAFA)])),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 17, right: 16.64, top: 10),
              height: 240,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assest/background_image.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const Text(
              "App Name",
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
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 24),
              child: Container(
                height: 55,
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
                  decoration: InputDecoration(
                      labelText: "Tên đăng nhập", border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 24),
              child: Container(
                height: 55,
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
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Mật khẩu",
                      suffixIcon: IconButton(
                        icon: const Icon(
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
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 263),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPass()));
                },
                child: const Text(
                  'Quên mật khẩu?',
                  style: TextStyle(color: Color(0xff024c5e)),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
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
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {},
                child: const Text(
                  "Đăng nhập",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontFamily: "Lato"),
                ),
              )),
            ),
            const SizedBox(
              height: 48,
            ),
            const Text("Đăng nhập bằng tài khoản",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: Center(
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assest/ggicon.png'),
                          ),
                        ),
                        child: Container(
                          child: const TextButton(
                            onPressed: null,
                            child: Text(''),
                          ),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assest/fbicon.png'),
                          ),
                        ),
                        child: Container(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NavigatePage()));
                            },
                            child: const Text(''),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 220,
              child: Center(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: const Text(
                        "Bạn chưa có tài khoản",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Registedpage2()));
                        },
                        child: const Text(
                          'Đăng kí',
                          style: TextStyle(
                              color: Color(0xff024C5E),
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lato",
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 8.0,
                                  color: Color.fromARGB(90, 0, 0, 0),
                                )
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
