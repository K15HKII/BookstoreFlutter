import 'package:flutter/material.dart';
import 'card_samples.dart';

class BookCardWithTotalPrize extends StatefulWidget {
  BookCardWithTotalPrize(
      String Title, String Image, int Price, int Amount, String Type,
      {Key? key})
      : super(key: key) {
    BookCardWithTotalPrize_Title = Title;
    BookCardWithTotalPrize_Image = Image;
    BookCardWithTotalPrize_PriceInt = Price;
    BookCardWithTotalPrize_AmountInt = Amount;
    BookCardWithTotalPrize_Type = Type;
  }

  @override
  State<BookCardWithTotalPrize> createState() => _BookCardWithTotalPrizeState();
}

class _BookCardWithTotalPrizeState extends State<BookCardWithTotalPrize> {
  @override
  Widget build(BuildContext context) {
    //---------------------------------------------------------------

    String BookCardWithTotalPrizeAmount =
        BookCardWithTotalPrize_AmountInt.toString();
    String BookCardWithTotalPrizePrice =
        BookCardWithTotalPrize_PriceInt.toString();
    int BookCardWithTotalPrizeTotalPriceInt =
        BookCardWithTotalPrize_PriceInt * BookCardWithTotalPrize_AmountInt;
    String BookCardWithTotalPrizeTotalPrice =
        BookCardWithTotalPrizeTotalPriceInt.toString();
    //---------------------------------------------------------------
    return Container(
      height: 138,
      width: 327,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              Container(
                  height: 68,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(BookCardWithTotalPrize_Image),
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
                          BookCardWithTotalPrize_Title,
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
                          BookCardWithTotalPrize_Type,
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
                      Row(
                        children: const <Widget>[],
                      ),
                      SizedBox(
                        width: 48,
                        height: 19,
                        child: Text(
                          BookCardWithTotalPrizeAmount,
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
                        BookCardWithTotalPrizePrice,
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
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Note",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  color: Color(0xff636363),
                ),
              ),
              const SizedBox(
                width: 105,
              ),
              const Text(
                "Thành tiền ",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: "Lato",
                  color: Colors.red,
                ),
              ),
              Text(
                BookCardWithTotalPrizeTotalPrice,
                style: const TextStyle(
                  fontSize: 17,
                  fontFamily: "Lato",
                  color: Colors.red,
                ),
              ),
              const Text(
                " đ",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: "Lato",
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

// ···
}
