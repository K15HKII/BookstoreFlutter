import 'package:flutter/material.dart';
import 'card_samples.dart';

class TopicCard extends StatefulWidget {
  TopicCard(String Topic, String Image, {Key? key}) : super(key: key) {
    TopicCard_Topic = Topic;
    TopicCard_Image = Image;
  }

  @override
  State<TopicCard> createState() => _TopicCardState();
}

class _TopicCardState extends State<TopicCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106,
      width: 70,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(left: 8, right: 8)),
            Container(
              height: 70,
              width: 54,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(TopicCard_Image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Center(
              child: Text(
                TopicCard_Topic,
                style: const TextStyle(fontSize: 12, fontFamily: "Lato"),
              ),
            )
          ],
        ),
      ),
    );
  }

// ···
}
