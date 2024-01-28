import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class InlineMathText extends StatelessWidget {
  final String text;

  InlineMathText(this.text);

  @override
  Widget build(BuildContext context) {
    List<InlineSpan> spans = [];
    final tokens = text.split('[[');
    for (var token in tokens) {
      if (token.contains(']]')) {
        var parts = token.split(']]');
        spans.add(
          WidgetSpan(
            child: Math.tex(
              parts[0],
              mathStyle: MathStyle.text,
            ),
            alignment: PlaceholderAlignment.bottom,
          ),
        );
        if (parts.length > 1 && parts[1].isNotEmpty) {
          spans.add(TextSpan(
            text: parts[1],
          ));
        }
      } else {
        spans.add(TextSpan(
          text: token,
        ));
      }
    }
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle.of(context).style.copyWith(height: 1.5),
          children: spans),
    );
  }
}
