import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/responsive.dart';

class TextHeadlinePrimary extends StatelessWidget {
  final String text;
  const TextHeadlinePrimary({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          margin: kMarginBottom48,
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 32 : 24,
              fontFamily: "Raleway",
              color: kDarkBlackColor,
              height: 1.3,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
