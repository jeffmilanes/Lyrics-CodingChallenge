import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double expandedHeight;
  final double collapsedHeight;
  final String imagePath;
  final Widget? child;
  final String? tag;
  final bool bottomBlur;
  final PreferredSizeWidget? bottomWidget;

  CustomAppBar(
      {required this.imagePath,
      required this.collapsedHeight,
      required this.expandedHeight,
      this.child,
      this.tag,
      this.bottomBlur = true,
      this.bottomWidget});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      collapsedHeight: collapsedHeight,
      flexibleSpace: Stack(
        children: [
          Hero(
            tag: '$tag',
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imagePath,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.0),
                  Colors.black.withOpacity(0.1),
                  bottomBlur ? Colors.black : Colors.transparent
                ],
                stops: [0.0, 0.8, 1.0],
              ),
            ),
            child: child,
          )
        ],
      ),
      bottom: bottomWidget,
    );
  }
}
