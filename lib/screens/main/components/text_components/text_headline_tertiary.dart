import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class TextHeadlineTertiary extends StatelessWidget {
  final String text;

  const TextHeadlineTertiary({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kMarginVertical12,
      alignment: Alignment.centerLeft,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: kDarkBlackColor,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
