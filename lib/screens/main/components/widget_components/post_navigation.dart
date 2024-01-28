import 'package:flutter/material.dart';
import 'package:news/screens/main/components/text_components/text_headline_secondary.dart';

class PostNavigation extends StatelessWidget {
  const PostNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Icon(
              Icons.keyboard_arrow_left,
              size: 25,
            ),
            TextHeadlineSecondary(text: "PREVIOUS POST")
          ],
        ),
        const Spacer(),
        Row(
          children: <Widget>[
            TextHeadlineSecondary(text: "NEXT POST"),
            const Icon(
              Icons.keyboard_arrow_right,
              size: 25,
            ),
          ],
        )
      ],
    );
  }
}
