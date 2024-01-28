import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class TextBody extends StatelessWidget {
  final String text;
  final Color? textColor;

  const TextBody({Key? key, this.textColor, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: kMarginBottom12,
        child: Text(
          text,
          textAlign: TextAlign.justify,
          style: TextStyle(height: 1.8, color: textColor),
        ));
  }
}
