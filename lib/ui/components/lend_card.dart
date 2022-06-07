import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LendCard extends StatefulWidget {
  const LendCard({Key? key}) : super(key: key);

  @override
  State<LendCard> createState() => _LendCardState();
}

class _LendCardState extends State<LendCard> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Flexible(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: const [
            LendCardDetail(image: "assets/testbg.jpg"),
          ],
        ),
      ),
      Flexible(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Align(alignment: Alignment.centerLeft, child: Text("Note")),
              Align(alignment: Alignment.centerRight, child: Text("120.000"))
            ]),
      )
    ]);
  }
}

class LendCardDetail extends StatelessWidget {
  final String image;

  const LendCardDetail({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 327 / 100,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(aspectRatio: 70 / 68, child: Image.asset(image)),
          const SizedBox(width: 10),
          const Flexible(
              child: ListTile(
                  title: Text("Sách Đắc Nhân Tâm"),
                  subtitle: Text("Bìa cứng"))),
          const SizedBox(width: 32),
          Column(mainAxisSize: MainAxisSize.min, children: const [
            Align(
              alignment: Alignment.centerRight,
              child: Text("x1"),
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: Text("120.000"),
            ),
          ])
        ],
      ),
    );
  }
}
