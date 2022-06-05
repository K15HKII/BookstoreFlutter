import 'package:flutter/material.dart';
import 'DesignCardView.dart';

class BigCardInfo extends StatefulWidget {
  BigCardInfo(String Title, String Image, int Price, int Amount, double Rate,
      String Desc,
      {Key? key})
      : super(key: key) {
    BigCardInfo_Title = Title;
    BigCardInfo_Image = Image;
    BigCardInfo_PriceInt = Price;
    BigCardInfo_AmountInt = Amount;
    BigCardInfo_StarInt = Rate;
    BigCardInfo_Description = Desc;
  }

  @override
  State<BigCardInfo> createState() => _BigCardInfoState();
}

class _BigCardInfoState extends State<BigCardInfo> {
  @override
  Widget build(BuildContext context) {
    //----------------------------------------------------------------
    String starfull = "assest/starfull.png";
    String starhalf = "assest/starhalf.png";
    String starempty = "assest/starempty.png";
    String star1 = starfull;
    String star2 = starfull;
    String star3 = starfull;
    String star4 = starfull;
    String star5 = starfull;
    if (BigCardInfo_StarInt > 4.75) {}
    if (BigCardInfo_StarInt <= 4.75 && BigCardInfo_StarInt > 4.25) {
      star5 = starhalf;
    }
    if (BigCardInfo_StarInt <= 4.25 && BigCardInfo_StarInt > 3.75) {
      star5 = starempty;
    }
    if (BigCardInfo_StarInt <= 3.75 && BigCardInfo_StarInt > 3.25) {
      star5 = starempty;
      star4 = starhalf;
    }
    if (BigCardInfo_StarInt <= 3.25 && BigCardInfo_StarInt > 2.75) {
      star5 = starempty;
      star4 = starempty;
    }
    if (BigCardInfo_StarInt <= 2.75 && BigCardInfo_StarInt > 2.25) {
      star3 = starhalf;
      star5 = starempty;
      star4 = starempty;
    }
    if (BigCardInfo_StarInt <= 2.25 && BigCardInfo_StarInt > 1.75) {
      star4 = starempty;
      star5 = starempty;
      star3 = starempty;
    }
    if (BigCardInfo_StarInt <= 1.75 && BigCardInfo_StarInt > 1.25) {
      star2 = starhalf;
      star5 = starempty;
      star4 = starempty;
      star3 = starempty;
    }
    if (BigCardInfo_StarInt <= 1.25 && BigCardInfo_StarInt > 0.75) {
      star4 = starempty;
      star5 = starempty;
      star3 = starempty;
      star2 = starempty;
    }
    if (BigCardInfo_StarInt <= 0.75 && BigCardInfo_StarInt > 0.25) {
      star1 = starhalf;
      star5 = starempty;
      star4 = starempty;
      star3 = starempty;
      star2 = starempty;
    }
    if (BigCardInfo_StarInt <= 0.25) {
      star5 = starempty;
      star4 = starempty;
      star3 = starempty;
      star2 = starempty;
      star1 = starempty;
    }
    String BigCardInfoPrice = BigCardInfo_PriceInt.toString();
    String BigCardInfoAmount = BigCardInfo_AmountInt.toString();
    //----------------------------------------------------------------
    return SizedBox(
      height: 525,
      width: 375,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: 375,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(BigCardInfo_Image),
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
                  height: 59,
                  width: 320,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 250,
                            child: Text(
                              BigCardInfo_Title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: "Lato"),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
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
                                      BigCardInfo_HeartInt += 1;
                                      if (BigCardInfo_HeartInt % 2 == 1) {
                                        setState(() {
                                          heartuncheck =
                                              "assest/heartcheck.png";
                                        });
                                      }
                                      if (BigCardInfo_HeartInt % 2 == 0) {
                                        setState(() {
                                          heartuncheck =
                                              "assest/heartuncheck.png";
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
                          Text(
                            BigCardInfoPrice,
                            style: const TextStyle(
                                fontSize: 24,
                                fontFamily: "Lato",
                                color: Colors.red),
                          ),
                          const Text(
                            "đ",
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Lato",
                                color: Colors.red),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 16,
                ),
                SizedBox(
                  height: 24,
                  width: 136,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 3.44,
                      ),
                      Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star1),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.89,
                      ),
                      Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star2),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.89,
                      ),
                      Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star3),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.89,
                      ),
                      Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star4),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.89,
                      ),
                      Container(
                        height: 16.36,
                        width: 17.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(star5),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 18,
              width: 350,
              child: Text(
                "Số lượng còn hàng",
                style: TextStyle(
                    fontSize: 16, fontFamily: "Lato", color: Color(0xff636363)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 19,
              width: 350,
              child: Text(
                BigCardInfoAmount,
                style: const TextStyle(
                    fontSize: 20, fontFamily: "Lato", color: Colors.red),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 18,
              width: 350,
              child: Text(
                "Mô tả",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  color: Color(0xff636363),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 18,
              width: 350,
              child: Text(
                BigCardInfo_Description,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

// ···
}
