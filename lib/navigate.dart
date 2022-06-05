import 'package:flutter/material.dart';
import 'package:bookstore_flutter/ui/components/forgot_password_page.dart';
import 'package:bookstore_flutter/main.dart';
import 'ui/components/register_page.dart';
import 'ui/components/forgot_password_page.dart';
import 'ui/components/DesignCardView.dart';
import 'ui/components/book_panel.dart';

class NavigatePage extends StatefulWidget {
  const NavigatePage({Key? key}) : super(key: key);

  @override
  State<NavigatePage> createState() => _NavigatePageState();
}

class _NavigatePageState extends State<NavigatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstRoute()));
              },
              child: const Text('main'),
            ),
          ),
          Container(
            color: Colors.black,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPass()));
              },
              child: const Text('forgotpass'),
            ),
          ),
          Container(
            color: Colors.black,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DesignCard()));
              },
              child: const Text('card'),
            ),
          ),
          Container(
            color: Colors.black,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Registedpage2()));
              },
              child: const Text('registed'),
            ),
          ),
          Container(
            color: Colors.black,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KhoSachMainMenu()));
              },
              child: const Text('khosachmainmenu'),
            ),
          ),
        ],
      ),
    );
  }
}
