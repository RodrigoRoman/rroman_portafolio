import 'package:flutter/material.dart';
import 'package:news/screens/main/components/text_components/text_body.dart';
import 'package:news/screens/main/components/text_components/text_headline_tertiary.dart';

class SourceReferences extends StatelessWidget {
  final String source;
  final String name;
  const SourceReferences({required this.source, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: TextHeadlineTertiary(text: name),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextBody(
                  text: source,
                  textColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
