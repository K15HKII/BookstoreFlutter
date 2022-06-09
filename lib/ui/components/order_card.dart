import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'card_samples.dart';
class OrderCard extends StatefulWidget {
  String Ordercard_title;
  String Ordercard_type;
  int Ordercard_amountInt;

  OrderCard(@required this.Ordercard_title,this.Ordercard_type,this.Ordercard_amountInt,{Key? key}) : super(key: key);

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    widget.Ordercard_type;
    widget.Ordercard_title;
    widget.Ordercard_amountInt;
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Flexible(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            OrderCardDetail(title: "test",image: "assets/testbg.jpg",type: "jjjj",amountInt: 6,price: 30000),
            OrderCardDetail(title: "test2",image: "assets/testbg2.jpg",type: "jjjj",amountInt: 6,price: 40000),
          ],
        ),
      ),
      Flexible(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Align(alignment: Alignment.centerLeft, child: Text("Note")),
              Align(alignment: Alignment.centerRight, child: Text("tong so tien ???"))
            ]),
      )
    ]);
  }
}

class OrderCardDetail extends StatelessWidget {
  final String image;
  final String title;
  final String type;
  final int amountInt;
  final int price;

  OrderCardDetail({Key? key,  required this.title,required this.image, required this.type, required this.amountInt, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String amount = amountInt.toString();
    final finalpriceint=price*amountInt;
    final String finalprice=finalpriceint.toString();
    int totalprice=0;
    totalprice=totalprice+finalpriceint;
    return AspectRatio(
      aspectRatio: 327 / 100,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(aspectRatio: 70 / 68, child: Image.asset(image)),
          const SizedBox(width: 10),
           Flexible(
              child: ListTile(
                  title: Text(title),
                  subtitle: Text(type))),
          const SizedBox(width: 32),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Align(
              alignment: Alignment.centerRight,
              child:  Row(children: [
                Text("x"),
                Text(amount),
              ],),
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: Text(finalprice),
            ),

          ])
        ],
      ),
    );
  }
}
