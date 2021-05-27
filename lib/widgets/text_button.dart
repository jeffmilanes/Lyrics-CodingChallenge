import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const CustomTextButton({
    Key? key,
    this.onPressed,
    required this.child,
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor!),
        foregroundColor: MaterialStateProperty.all<Color>(foregroundColor!),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
