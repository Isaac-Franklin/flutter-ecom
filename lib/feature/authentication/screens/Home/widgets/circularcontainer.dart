import 'package:flutter/material.dart';

class TCircleContainer extends StatelessWidget {
  const TCircleContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 10,
    this.padding = 0,
    this.backgroundColor = const Color.fromARGB(88, 187, 222, 251),
    this.margin,
  });

  final Widget? child;
  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Color backgroundColor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(0),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          400,
        ),
        color: backgroundColor,
      ),
    );
  }
}
