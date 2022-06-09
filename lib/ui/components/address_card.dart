import 'package:bookstore_flutter/ui/components/namechange_card.dart';
import 'package:bookstore_flutter/ui/components/password_change_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddressCard extends StatefulWidget {
  String province;
  String xa;
  String sonha;
  AddressCard(this.province,this.xa,this.sonha,{Key? key}) : super(key: key);

  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {




  @override
  Widget build(BuildContext context) {
    widget.province;
    widget.xa;
    widget.sonha;
    return Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.vertical(bottom: Radius.circular(10),top:Radius.circular(10) ),
          color: const Color(0xffFFFFFF),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8,
              offset: Offset(0, 4), // Shadow position
            ),
          ],
        ),
        child: Center(
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            widget.sonha,
                            style: TextStyle(
                                fontSize: 16, fontFamily: "Lato"),
                          ),
                          Text(", "),
                          Text(
                            widget.xa,
                            style: TextStyle(
                                fontSize: 16, fontFamily: "Lato"),
                          ),
                          Text(", "),
                          Text(
                            widget.province,
                            style: TextStyle(
                                fontSize: 16, fontFamily: "Lato"),
                          ),
                        ],
                      ))),
              Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        //Navigator.push(
                        //context,
                        //MaterialPageRoute(
                        // builder: (context) => Information()));
                      },
                      child: const Text(
                        "",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: "Lato"),
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.arrow_forward_ios_outlined,
                          color: Color(0xff0C5776))))
            ],
          ),
        ));
  }
}
