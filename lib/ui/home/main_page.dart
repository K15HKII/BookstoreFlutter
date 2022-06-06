import 'package:bookstore_flutter/main.dart';
import 'package:bookstore_flutter/ui/authentication/login/forgot_password_page.dart';
import 'package:bookstore_flutter/ui/home/panel/home_panel.dart';
import 'package:bookstore_flutter/ui/home/panel/order_panel.dart';
import 'package:flutter/material.dart';

import '../authentication/login/register_page.dart';
import '../components/DesignCardView.dart';
import '../components/book_panel.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePanel(),
    OrderPanel(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 15, 0),
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
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.filter_alt_outlined)),
                        ),
                      )),
                ),
                const Icon(Icons.notifications),
                const Icon(Icons.shopping_cart)
              ],
            ),
            Expanded(
                child: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.monitor_heart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
