import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';

class TextBlockquote extends StatelessWidget {
  final String text;

  const TextBlockquote({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kMarginVertical24,
      padding: kMarginAll24,
      decoration: const BoxDecoration(
          color: kBgQuoteColor,
          border: Border(left: BorderSide(width: 2, color: kBorderQuoteColor))),
      child: Align(
        alignment: Alignment.center,
        child: TextBody(
          text: text,
        ),
      ),
    );
  }
}
