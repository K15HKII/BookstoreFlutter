import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingPanel extends StatefulWidget {
  const SettingPanel({Key? key}) : super(key: key);

  @override
  State<SettingPanel> createState() => _SettingPanelState();
}

class _SettingPanelState extends State<SettingPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/testbg.jpg"),
              radius: 35,
            ),
            Column(
              children: [
                Text("Huy cute",style: TextStyle(fontFamily: "Lato",fontSize: 24,color: Color(0xff000000)),)
              ],
            )
          ],
        )
      ],
    );
  }
}
