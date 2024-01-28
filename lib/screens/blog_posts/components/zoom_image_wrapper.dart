import 'package:flutter/widgets.dart';
import 'package:photo_view/photo_view.dart';

class ZoomImageWrapper extends StatelessWidget {
  final String image;

  const ZoomImageWrapper({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: width / 4,
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: PhotoView(
        imageProvider: AssetImage(
          image,
        ),
        minScale: PhotoViewComputedScale.contained * 0.8,
        maxScale: PhotoViewComputedScale.covered * 2,
        enableRotation: true,
        filterQuality: FilterQuality.none,
      ),
    );
  }
}
