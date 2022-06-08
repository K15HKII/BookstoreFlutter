import 'package:bookstore_flutter/data/models/bill_status.dart';
import 'package:bookstore_flutter/ui/components/order_card.dart';
import 'package:bookstore_flutter/ui/components/price_card_big.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bookstore_flutter/ui/components/card_samples.dart';
class OrderPanel extends StatefulWidget {
  const OrderPanel({Key? key}) : super(key: key);

  @override
  State<OrderPanel> createState() => _OrderPanelState();
}

class _OrderPanelState extends State<OrderPanel> {
  static const Map<BillStatus, String> Labels = {
    BillStatus.waiting: 'Chờ xác nhận',
    BillStatus.transporting: 'Đang vận chuyển',
    BillStatus.finished: 'Đã vận chuyển',
    BillStatus.canceled: 'Đánh giá',
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
        SizedBox(height: 30,),
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
                  return OrderCard( "Huy cute","huycute",3);

                }))
      ],
    );
  }
}
