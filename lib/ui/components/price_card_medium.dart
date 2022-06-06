import 'package:flutter/material.dart';
import 'DesignCardView.dart';

class PriceCard extends StatefulWidget {
  PriceCard(String Title, String Image, int Price, {Key? key})
      : super(key: key) {
    PriceCard_Title = Title;
    PriceCard_Image = Image;
    PriceCard_PriceInt = Price;
  }

  @override
  State<PriceCard> createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  @override
  Widget build(BuildContext context) {
    //-----------------------------------------------------------------

    String PriceCardPrice = PriceCard_PriceInt.toString();

    //-----------------------------------------------------------------
    return SizedBox(
      height: 223,
      width: 155,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 156,
              width: 155,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(PriceCard_Image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 102,
                    height: 14,
                    child: Text(
                      PriceCard_Title,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: "Lato"),
                    ),
                  ),
                  Container(
                    height: 21,
                    width: 18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(heartuncheck),
                      ),
                    ),
                    child: Container(
                        child: TextButton(
                            child: const Text(""),
                            onPressed: () {
                              PriceCard_HeartInt += 1;
                              if (PriceCard_HeartInt % 2 == 1) {
                                setState(() {
                                  heartuncheck = "assets/heartcheck.png";
                                });
                              }
                              if (PriceCard_HeartInt % 2 == 0) {
                                setState(() {
                                  heartuncheck = "assets/heartuncheck.png";
                                });
                              }
                            })),
                  )
                ],
              ),
            ),
            SizedBox(
                width: 125,
                height: 19,
                child: Row(
                  children: <Widget>[
                    Text(
                      PriceCardPrice,
                      style: const TextStyle(
                          fontSize: 16, fontFamily: "Lato", color: Colors.red),
                    ),
                    const Text(
                      "đ",
                      style: TextStyle(
                          fontSize: 16, fontFamily: "Lato", color: Colors.red),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

// ···
}
