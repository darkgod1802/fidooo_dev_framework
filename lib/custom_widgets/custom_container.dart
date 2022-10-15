import 'package:flutter/material.dart';

class FContainer extends StatelessWidget {
  const FContainer(
      {Key? key,
      this.width,
      this.height,
      this.color,
      this.child,
      this.border,
      this.borderRadius = 5.0,
      this.padding = const EdgeInsets.all(5.0),
      this.margin,
      this.onTap})
      : super(key: key);

  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;
  final Border? border;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
            border: border,
            color: color),
        child: child,
      ),
    );
  }
}
