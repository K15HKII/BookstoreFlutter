import 'package:flutter/material.dart';

class SearchPanel extends StatefulWidget {
  const SearchPanel({Key? key}) : super(key: key);

  @override
  State<SearchPanel> createState() => _SearchPanelState();
}

RangeValues _currentRangeValues = const RangeValues(0, 5000000);
int aInt = 0;
int bInt = 5000000;
String a = aInt.toString();
String b = bInt.toString();
int SearchPanel_Checkbox1 = 0;
int SearchPanel_Checkbox2 = 0;
int SearchPanel_Checkbox3 = 0;
String checkbox1 = "assets/uncheckcircle.png";
String checkbox2 = "assets/uncheckcircle.png";
String checkbox3 = "assets/uncheckcircle.png";

//a la bien chi diem dau cua slider, b la bien chi diem cuoi cua slider
class _SearchPanelState extends State<SearchPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 530,
        width: 375,
        decoration: const BoxDecoration(color: Color(0xff98BDC7)),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 28,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 281),
              child: SizedBox(
                height: 24,
                width: 70,
                child: Text(
                  "Sắp xếp",
                  style: TextStyle(fontFamily: "Lato", fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Container(
                height: 144,
                width: 327,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 48,
                      width: 327,
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(
                                left: 18,
                                top: 14,
                                bottom: 14,
                              ),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(checkbox1))),
                                child: TextButton(
                                    child: const Text(""),
                                    onPressed: () {
                                      SearchPanel_Checkbox1 += 1;
                                      SearchPanel_Checkbox2 = 0;
                                      SearchPanel_Checkbox3 = 0;
                                      if (SearchPanel_Checkbox1 % 2 == 1) {
                                        setState(() {
                                          checkbox1 = "assets/checkcircle.png";
                                          checkbox2 =
                                              "assets/uncheckcircle.png";
                                          checkbox3 =
                                              "assets/uncheckcircle.png";
                                        });
                                      }
                                      if (SearchPanel_Checkbox1 % 2 == 0) {
                                        setState(() {
                                          checkbox1 =
                                              "assets/uncheckcircle.png";
                                        });
                                      }
                                    }),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const SizedBox(
                            height: 19,
                            width: 180,
                            child: Text(
                              "Giá từ cao xuống thấp",
                              style:
                                  TextStyle(fontFamily: "Lato", fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 327,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(
                                left: 18,
                                top: 14,
                                bottom: 14,
                              ),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(checkbox2))),
                                child: TextButton(
                                    child: const Text(""),
                                    onPressed: () {
                                      SearchPanel_Checkbox2 += 1;
                                      SearchPanel_Checkbox1 = 0;
                                      SearchPanel_Checkbox3 = 0;
                                      if (SearchPanel_Checkbox2 % 2 == 1) {
                                        setState(() {
                                          checkbox2 = "assets/checkcircle.png";
                                          checkbox1 =
                                              "assets/uncheckcircle.png";
                                          checkbox3 =
                                              "assets/uncheckcircle.png";
                                        });
                                      }
                                      if (SearchPanel_Checkbox2 % 2 == 0) {
                                        setState(() {
                                          checkbox2 =
                                              "assets/uncheckcircle.png";
                                        });
                                      }
                                    }),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const SizedBox(
                            height: 19,
                            width: 180,
                            child: Text(
                              "Giá từ thấp lên cao",
                              style:
                                  TextStyle(fontFamily: "Lato", fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: 327,
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(
                                left: 18,
                                top: 14,
                                bottom: 14,
                              ),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(checkbox3))),
                                child: TextButton(
                                    child: const Text(""),
                                    onPressed: () {
                                      SearchPanel_Checkbox3 += 1;
                                      SearchPanel_Checkbox1 = 0;
                                      SearchPanel_Checkbox2 = 0;
                                      if (SearchPanel_Checkbox3 % 2 == 1) {
                                        setState(() {
                                          checkbox3 = "assets/checkcircle.png";
                                          checkbox2 =
                                              "assets/uncheckcircle.png";
                                          checkbox1 =
                                              "assets/uncheckcircle.png";
                                        });
                                      }
                                      if (SearchPanel_Checkbox3 % 2 == 0) {
                                        setState(() {
                                          checkbox3 =
                                              "assets/uncheckcircle.png";
                                        });
                                      }
                                    }),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const SizedBox(
                            height: 19,
                            width: 180,
                            child: Text(
                              "Đánh giá cao",
                              style:
                                  TextStyle(fontFamily: "Lato", fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: SizedBox(
                    width: 153,
                    height: 24,
                    child: Text(
                      "Giá trong khoảng",
                      style: TextStyle(fontFamily: "Lato", fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 65,
                ),
                SizedBox(
                  height: 14,
                  width: 120,
                  child: Row(
                    children: <Widget>[
                      Text(
                        a,
                        style: const TextStyle(fontFamily: "Lato", fontSize: 13),
                      ),
                      const Text(
                        " - ",
                        style: TextStyle(fontFamily: "Lato", fontSize: 13),
                      ),
                      Text(
                        b,
                        style: const TextStyle(fontFamily: "Lato", fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 28,
              ),
              child: SizedBox(
                width: 328,
                child: RangeSlider(
                  values: _currentRangeValues,
                  max: 5000000,
                  divisions: 5,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      aInt = _currentRangeValues.start.toInt();
                      bInt = _currentRangeValues.end.toInt();
                      _currentRangeValues = values;
                      a = aInt.toString();
                      b = bInt.toString();
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: SizedBox(
                    width: 153,
                    height: 24,
                    child: Text(
                      "Đánh giá",
                      style: TextStyle(fontFamily: "Lato", fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 101),
              child: SizedBox(
                height: 24,
                width: 250,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 3.44),
                      child: Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/starfull.png"))),
                      ),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 57.44,
                    ),
                    const Text(
                      "5 sao",
                      style: TextStyle(fontFamily: "Lato", fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 101),
              child: SizedBox(
                height: 24,
                width: 250,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 3.44),
                      child: Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/starfull.png"))),
                      ),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    const SizedBox(
                      width: 50.44,
                    ),
                    const Text(
                      "4 sao trở lên",
                      style: TextStyle(fontFamily: "Lato", fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 101),
              child: SizedBox(
                height: 24,
                width: 250,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 3.44),
                      child: Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/starfull.png"))),
                      ),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    const SizedBox(
                      width: 17.11,
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    const SizedBox(
                      width: 50.44,
                    ),
                    const Text(
                      "3 sao trở lên",
                      style: TextStyle(fontFamily: "Lato", fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 101),
              child: SizedBox(
                height: 24,
                width: 250,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 3.44),
                      child: Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/starfull.png"))),
                      ),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    Container(
                      height: 16.36,
                      width: 17.11,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/starfull.png"))),
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    const SizedBox(
                      width: 17.11,
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    const SizedBox(
                      width: 17.11,
                    ),
                    const SizedBox(
                      width: 14.89,
                    ),
                    const SizedBox(
                      width: 50.44,
                    ),
                    const Text(
                      "2 sao trở lên",
                      style: TextStyle(fontFamily: "Lato", fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// ···
}
