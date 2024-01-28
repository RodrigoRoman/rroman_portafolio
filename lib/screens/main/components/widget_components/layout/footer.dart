import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  // TODO Add additional footer components (i.e. about, links, logos).
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: kMarginVertical24,
      color: kDarkBlackColor,
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: TextBody(
            text: AppConstantStrings.appName,
            textColor: Colors.white,
          )),
          Expanded(
              child:
                  TextBody(text: "Copyright © 2023", textColor: Colors.white)),
        ],
      )),
    );
  }
}
