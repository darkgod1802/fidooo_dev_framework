library flutter_pkg;

import 'package:flutter/material.dart';

class FRaisedButton extends StatelessWidget {
  const FRaisedButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.borderRadius = 5,
      this.color,
      this.borderSide = BorderSide.none})
      : super(key: key);
  final Widget? child;
  final Color? color;
  final VoidCallback onPressed;
  final double borderRadius;
  final BorderSide borderSide;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              color != null ? MaterialStateProperty.all<Color>(color!) : null,
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            side: borderSide,
            borderRadius: BorderRadius.circular(borderRadius),
          ))),
      onPressed: onPressed,
      child: child,
    );
  }
}
