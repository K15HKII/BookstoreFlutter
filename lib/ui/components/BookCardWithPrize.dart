import 'package:flutter/material.dart';
import 'DesignCardView.dart';

class BookCardWithPrize extends StatefulWidget {
  BookCardWithPrize(
      String Title, String Image, int Price, int Amount, String Type,
      {Key? key})
      : super(key: key) {
    BookCardWithPrize_Title = Title;
    BookCardWithPrize_Image = Image;
    BookCardWithPrize_PriceInt = Price;
    BookCardWithPrize_AmountInt = Amount;
    BookCardWithPrize_Type = Type;
  }

  @override
  State<BookCardWithPrize> createState() => _BookCardWithPrizeState();
}

class _BookCardWithPrizeState extends State<BookCardWithPrize> {
  @override
  Widget build(BuildContext context) {
    //-----------------------------------------------------------------------

    String BookCardWithPrizeAmount = BookCardWithPrize_AmountInt.toString();
    String BookCardWithPrizePrice = BookCardWithPrize_PriceInt.toString();
    //-----------------------------------------------------------------------
    return Container(
      height: 100,
      width: 327,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
              height: 68,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(BookCardWithPrize_Image),
                  fit: BoxFit.fitHeight,
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 68,
            width: 150,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 6,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      BookCardWithPrize_Title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: "Lato",
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      BookCardWithPrize_Type,
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: "Lato",
                        color: Color(0xff636363),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 35,
                  ),
                  const SizedBox(
                    width: 9,
                    height: 19,
                    child: Text(
                      "x",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Lato",
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 48,
                    height: 19,
                    child: Text(
                      BookCardWithPrizeAmount,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: "Lato",
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: <Widget>[
                  Text(
                    BookCardWithPrizePrice,
                    style: const TextStyle(
                      fontSize: 11,
                      fontFamily: "Lato",
                      color: Color(0xff001c44),
                    ),
                  ),
                  const Text(
                    " đ",
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: "Lato",
                      color: Color(0xff001c44),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

// ···
}
