import 'package:flutter/material.dart';
import 'DesignCardView.dart';

class BookCard extends StatefulWidget {
  BookCard(String Title, String Image, int Amount, String Type, {Key? key})
      : super(key: key) {
    BookCard_Title = Title;
    BookCard_Image = Image;
    BookCard_AmountInt = Amount;
    BookCard_Type = Type;
  }

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    //--------------------------------------------------------
    String BookCardAmount = BookCard_AmountInt.toString();
    //--------------------------------------------------------
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
                  image: AssetImage(BookCard_Image),
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
                      BookCard_Title,
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
                      BookCard_Type,
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
              BookCardAmount,
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
    );
  }

// ···
}
