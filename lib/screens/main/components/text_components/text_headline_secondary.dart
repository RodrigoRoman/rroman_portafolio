import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class TextHeadlineSecondary extends StatelessWidget {
  final String text;

  const TextHeadlineSecondary({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kMarginTitle,
      alignment: Alignment.centerLeft,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: kDarkBlackColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
