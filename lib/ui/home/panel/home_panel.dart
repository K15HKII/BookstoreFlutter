import 'package:bookstore_flutter/ui/components/price_card_big.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bookstore_flutter/ui/components/book_card_prize.dart';
import 'package:bookstore_flutter/ui/components/book_card.dart';
import 'package:bookstore_flutter/ui/components/book_card_add.dart';
import 'package:bookstore_flutter/ui/components/book_card_prize.dart';
import 'package:bookstore_flutter/ui/components/price_card_big.dart';
import 'package:bookstore_flutter/ui/components/price_card_medium.dart';
import 'package:bookstore_flutter/ui/components/book_card_prize.dart';
import 'package:bookstore_flutter/ui/components/book_card_total_prize.dart';


class HomePanel extends StatefulWidget {
  const HomePanel({Key? key}) : super(key: key);

  @override
  State<HomePanel> createState() => _HomePanelState();
}

class _HomePanelState extends State<HomePanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50,right: 250),
          child: Text("Kho sách",
              style: TextStyle(
                color: Color(0xff001C44),
                fontSize: 31,
                fontFamily: 'Lato',
              )),
        ),
        SizedBox(
          height: 50,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ActionChip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: const Text('AB'),
                  ),
                  label: const Text('Tất cả'),
                  onPressed: () {},
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: const Text('AB'),
                  ),
                  label: const Text('Phổ biến'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: const Text('AB'),
                  ),
                  label: const Text('Gần đây'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: const Text('AB'),
                  ),
                  label: const Text('Dành cho bạn'),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Center(
                child: SingleChildScrollView(
          child: Wrap(children: [
            BookCardWithTotalPrize("zigzag","assets/testbg.jpg", 8291,11,"Bìa mềm"),
            DesignCardWithStar("Test", "assets/testbg.jpg", 11, 0.5),
            DesignCardWithStar("Test", "assets/testbg2.jpg", 10, 0.5),
            DesignCardWithStar("Test", "assets/testbg.jpg", 10, 4.3),
            DesignCardWithStar("Test4", "assets/testbg.jpg", 10, 2.6),
            DesignCardWithStar("Test5", "assets/testbg.jpg", 10, 0.5)
          ]),
        )))
      ],
    );
  }
}
