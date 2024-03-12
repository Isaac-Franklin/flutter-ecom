import 'package:flutter/material.dart';

class TCircleContainer extends StatelessWidget {
  const TCircleContainer(
      {super.key,
      this.child,
      this.width = 400,
      this.height = 400,
      this.radius = 10,
      this.padding = 0,
      this.backgroundColor = Colors.blue});

  final Widget? child;
  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          400,
        ),
        color: const Color.fromARGB(88, 187, 222, 251),
      ),
    );
  }
}
