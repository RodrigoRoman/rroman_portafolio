import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news/constants.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';
import 'package:news/screens/main/components/text_components/text_headline_secondary.dart';

class GitHubCodeSection extends StatelessWidget {
  final String? svg, name, bio;

  const GitHubCodeSection(
      {this.svg, required this.name, required this.bio, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: <Widget>[
          if (svg != null)
            Expanded(
              child: Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.only(right: 25),
                  child: Material(
                    shape: const CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    color: Colors.transparent,
                    child: SvgPicture.asset(
                      svg!,
                    ),
                  )),
            ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: <Widget>[
                if (name != null)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextHeadlineSecondary(text: name!),
                  ),
                if (bio != null)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextBody(text: bio!),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
