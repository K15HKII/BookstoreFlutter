import 'package:flutter/material.dart';
import 'DesignCardView.dart';

class DesignCardWithStar extends StatefulWidget {
  DesignCardWithStar(String Title, String Image, int Price, double Rate,
      {Key? key})
      : super(key: key) {
    PriceCardWithStar_Title = Title;
    PriceCardWithStar_Image = Image;
    PriceCardWithStar_PriceInt = Price;
    PriceCardWithStar_StarInt = Rate;
  }

  @override
  State<DesignCardWithStar> createState() => _DesignCardWithStarState();
}

class _DesignCardWithStarState extends State<DesignCardWithStar> {

  @override
  Widget build(BuildContext context) {
    //------------------------------------------------------------------------

    String PriceCardWithStarPrice = PriceCardWithStar_PriceInt.toString();
    String PriceCardWithStarStar = PriceCardWithStar_StarInt.toString();
    String starfull = "assets/starfull.png";
    String starhalf = "assets/starhalf.png";
    String starempty = "assets/starempty.png";
    String starpick = "";
    if (PriceCardWithStar_StarInt >= 4) {
      starpick = starfull;
    }
    if (PriceCardWithStar_StarInt < 4 && PriceCardWithStar_StarInt > 2) {
      starpick = starhalf;
    }
    if (PriceCardWithStar_StarInt <= 2) {
      starpick = starempty;
    }
    //------------------------------------------------------------------------
    return SizedBox(
      height: 260,
      width: 172,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 137,
              width: 172,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(PriceCardWithStar_Image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 12,
                ),
                Container(
                  decoration: const BoxDecoration(),
                  height: 61,
                  width: 124,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 124,
                        height: 36,
                        child: Text(
                          PriceCardWithStar_Title,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: "Lato"),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            PriceCardWithStarPrice,
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: "Lato",
                                color: Colors.red),
                          ),
                          const SizedBox(
                            width: 10,
                            height: 19,
                            child: Text(
                              "đ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Lato",
                                  color: Colors.red),
                            ),
                          )
                        ],
                      )
                    ],
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
                            PriceCardWithStar_HeartInt += 1;
                            if (PriceCardWithStar_HeartInt % 2 == 1) {
                              setState(() {
                                heartuncheck = "assets/heartcheck.png";
                              });
                            }
                            if (PriceCardWithStar_HeartInt % 2 == 0) {
                              setState(() {
                                heartuncheck = "assets/heartuncheck.png";
                              });
                            }
                          })),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 28,
                  width: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(
                            5.0) //                 <--- border radius here
                        ),
                  ),
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 5.44,
                      ),
                      Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(starpick),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5.44,
                      ),
                      SizedBox(
                        width: 17,
                        height: 13,
                        child: Text(
                          PriceCardWithStarStar,
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Lato",
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

// ···
}
