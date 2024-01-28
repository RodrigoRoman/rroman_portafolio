import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function action;
  const ActionButton({required this.text, required this.action, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        action();
      },
      child: Container(
        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: kPrimaryColor, width: 3),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: kDarkBlackColor),
        ),
      ),
    );
  }
}
