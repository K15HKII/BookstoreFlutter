import 'package:flutter/widgets.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Flexible(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: const [
            OrderCardDetail(image: "assets/testbg.jpg"),
            OrderCardDetail(image: "assets/testbg.jpg"),
          ],
        ),
      ),
      Flexible(
        child: SizedBox(
          height: 50,
          width: 100,
          child: Row(children: const [
            Align(alignment: Alignment.centerLeft, child: Text("Note")),
            Align(alignment: Alignment.centerRight, child: Text("120.000"))
          ]),
        ),
      )
    ]);
  }
}

class OrderCardDetail extends StatelessWidget {
  final String image;

  const OrderCardDetail({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(image),
        ),
        const Text("Test")
      ],
    );
  }
}
