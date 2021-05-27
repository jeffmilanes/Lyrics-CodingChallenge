import 'package:flutter/material.dart';

class CustomClipperWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width * 1.4, size.height);

    path.lineTo(size.width * 0.45, size.height);

    path.cubicTo(size.width * 0.45, size.height * 0.97, size.width * 0.64,
        size.height * 0.95, size.width * 0.64, size.height * 0.92);

    path.cubicTo(size.width * 0.64, size.height * 0.89, size.width * 0.45,
        size.height * 0.85, size.width * 0.45, size.height * 0.82);

    path.cubicTo(size.width * 0.45, size.height * 0.78, size.width * 0.64,
        size.height * 0.75, size.width * 0.64, size.height * 0.72);

    path.cubicTo(size.width * 0.64, size.height * 0.68, size.width * 0.45,
        size.height * 0.65, size.width * 0.45, size.height * 0.61);

    path.cubicTo(size.width * 0.45, size.height * 0.58, size.width * 0.64,
        size.height * 0.54, size.width * 0.64, size.height * 0.51);

    path.cubicTo(size.width * 0.64, size.height * 0.48, size.width * 0.45,
        size.height * 0.44, size.width * 0.45, size.height * 0.41);

    path.cubicTo(size.width * 0.45, size.height * 0.37, size.width * 0.64,
        size.height * 0.34, size.width * 0.64, size.height * 0.30);

    path.cubicTo(size.width * 0.64, size.height * 0.27, size.width * 0.45,
        size.height * 0.23, size.width * 0.45, size.height * 0.20);

    path.cubicTo(size.width * 0.45, size.height * 0.17, size.width * 0.64,
        size.height * 0.13, size.width * 0.64, size.height * 0.10);

    path.cubicTo(size.width * 0.64, size.height * 0.06, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, 0);

    path.lineTo(size.width * 1.45, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
