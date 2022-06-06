import 'package:bookstore_flutter/ui/components/price_card_big.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderPanel extends StatefulWidget {
  const OrderPanel({Key? key}) : super(key: key);

  @override
  State<OrderPanel> createState() => _OrderPanelState();
}

class _OrderPanelState extends State<OrderPanel> {
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
                TextButton(child: const Text("Chờ"), onPressed: () {}),
                TextButton(child: const Text("Đặt hàng"), onPressed: () {}),
              ],
            ),
          ),
        ),
        Expanded(
            child: Center(
                child: SingleChildScrollView(
          child: Wrap(children: [
            DesignCardWithStar("Test", "assets/testbg.jpg", 10, 0.5),
            DesignCardWithStar("Test", "assets/testbg.jpg", 10, 0.5),
            DesignCardWithStar("Test", "assets/testbg.jpg", 10, 0.5),
            DesignCardWithStar("Test", "assets/testbg.jpg", 10, 0.5),
            DesignCardWithStar("Test", "assets/testbg.jpg", 10, 0.5)
          ]),
        )))
      ],
    );
  }
}
