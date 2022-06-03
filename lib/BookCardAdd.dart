import 'package:flutter/material.dart';
import 'DesignCardView.dart';

class BookCardAdd extends StatefulWidget {
  BookCardAdd(
      String Title, String Image, String Type, int OriginPrice, int Amount,
      {Key? key})
      : super(key: key) {
    BookCardAdd_Title = Title;
    BookCardAdd_Image = Image;
    BookCardAdd_Type = Type;
    BookCardAdd_PriceOriginInt = OriginPrice;
    BookCardAdd_CountInt=Amount;

  }
  @override
  State<BookCardAdd> createState() => _BookCardAddState();
}

class _BookCardAddState extends State<BookCardAdd> {
  @override
  Widget build(BuildContext context) {
    //--------------------------------------------------------

    int BookCardAddPriceSumInt =
        BookCardAdd_PriceOriginInt * BookCardAdd_CountInt;
    String BookCardAddPriceSum = BookCardAddPriceSumInt.toString();
    String BookCardAddCount = BookCardAdd_CountInt.toString();

    //--------------------------------------------------------
    return Container(
      width: 327,
      height: 101,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              const SizedBox(
                height: 8,
              ),
              Container(
                  height: 68,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(BookCardAdd_Image),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              const SizedBox(
                height: 25,
              )
            ],
          ),
          Column(
            children: <Widget>[
              const SizedBox(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 19,
                      width: 203,
                      child: Text(
                        BookCardAdd_Title,
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
                    width: 9,
                  ),
                  Container(
                      height: 18,
                      width: 14,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/trashcanicon.png")),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            child: const TextButton(
                              onPressed: null,
                              child: Text(''),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 215,
                  height: 14,
                  child: Text(
                    BookCardAdd_Type,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Lato",
                      color: Color(0xff636363),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.5,
              ),
              SizedBox(
                height: 28,
                width: 240,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 28,
                      width: 90,
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              BookCardAddPriceSum,
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: "Lato",
                                color: Colors.red,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              " đ",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Lato",
                                color: Colors.red,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 28,
                      width: 28,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assest/minusbutton.png'))),
                      child: TextButton(
                          child: const Text(''),
                          onPressed: () {
                            if (BookCardAdd_CountInt > 0) {
                              BookCardAdd_CountInt -= 1;
                              BookCardAddPriceSumInt =
                                  BookCardAdd_PriceOriginInt *
                                      BookCardAdd_CountInt;
                              setState(() {
                                BookCardAddCount =
                                    BookCardAdd_CountInt.toString();
                                BookCardAddPriceSum =
                                    BookCardAddPriceSumInt.toString();
                              });
                            }
                            if (BookCardAdd_CountInt == 0) {}
                          }),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            width: 22,
                            child: Center(
                              child: Text(
                                BookCardAddCount,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Lato",
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 28,
                      width: 28,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assest/plusbutton.png'))),
                      child: TextButton(
                          child: const Text(''),
                          onPressed: () {
                            BookCardAdd_CountInt += 1;
                            BookCardAddPriceSumInt =
                                BookCardAdd_PriceOriginInt *
                                    BookCardAdd_CountInt;
                            setState(() {
                              BookCardAddCount =
                                  BookCardAdd_CountInt.toString();
                              BookCardAddPriceSum =
                                  BookCardAddPriceSumInt.toString();
                            });
                          }),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
