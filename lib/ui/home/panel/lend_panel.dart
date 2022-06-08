import 'package:bookstore_flutter/data/models/bill/bill_status.dart';
import 'package:bookstore_flutter/data/models/lend/lend_status.dart';
import 'package:bookstore_flutter/ui/components/lend_card.dart';
import 'package:bookstore_flutter/ui/components/order_card.dart';
import 'package:bookstore_flutter/ui/components/price_card_big.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LendPanel extends StatefulWidget {
  const LendPanel({Key? key}) : super(key: key);

  @override
  State<LendPanel> createState() => _LendPanelState();
}

class _LendPanelState extends State<LendPanel> {
  static const Map<LendStatus, String> Labels = {

  };

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(alignment: Alignment.centerLeft, child: Text("Kho sách")),
        SizedBox(
          height: 50,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              itemCount: Labels.length,
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                    onPressed: () {
                      _onItemTapped(index);
                    },
                    child: Text(Labels[BillStatus.values[index]]!));
              },
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: _selectedIndex + 1,
                itemBuilder: (context, index) {
                  return const LendCard();
                }))
      ],
    );
  }
}
