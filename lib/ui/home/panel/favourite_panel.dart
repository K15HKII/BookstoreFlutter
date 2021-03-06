import 'package:bookstore_flutter/ui/components/price_card_big.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavouritePanel extends StatefulWidget {
  const FavouritePanel({Key? key}) : super(key: key);

  @override
  State<FavouritePanel> createState() => _FavouritePanelState();
}

class _FavouritePanelState extends State<FavouritePanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(alignment: Alignment.centerLeft, child: Text("Kho sách")),
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
                  label: const Text('Aaron Burr'),
                  onPressed: () {},
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: const Text('AB'),
                  ),
                  label: const Text('Aaron Burr'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: const Text('AB'),
                  ),
                  label: const Text('Aaron Burr'),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Center(
                child: SingleChildScrollView(
          child: Wrap(children: [
            DesignCardWithStar("Test", "assets/testbg.jpg", 15, 0.5),
            DesignCardWithStar("Test", "assets/testbg.jpg", 12, 0.5),
            DesignCardWithStar("Test", "assets/testbg.jpg", 12, 3.8),
            DesignCardWithStar("Test", "assets/testbg.jpg", 10, 2.4),
            DesignCardWithStar("Test", "assets/testbg.jpg", 10, 0.5)
          ]),
        )))
      ],
    );
  }
}
