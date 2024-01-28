import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:news/constants.dart';

class EquationBlock extends StatelessWidget {
  final String text;
  const EquationBlock({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: kMarginVertical24,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Math.tex(
            text,
            textStyle: TextStyle(fontSize: 32),
            mathStyle: MathStyle.display,
          ),
        ),
      ),
    );
  }
}
