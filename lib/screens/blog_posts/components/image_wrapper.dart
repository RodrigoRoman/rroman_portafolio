import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageWrapper extends StatelessWidget {
  final String image;

  const ImageWrapper({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: InteractiveViewer(
        key: Key(image),
        child: Image.asset(
          width: width,
          height: width / 3,
          image,
        ),
      ),
    );
  }
}
