import 'package:ecomapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';

class THeartIcon extends StatelessWidget {
  const THeartIcon({
    super.key,
    this.width,
    this.height,
    this.size,
    required this.icon,
    this.onPressed,
    this.color,
    this.iconColor,
  });

  final double? width;
  final double? height;
  final double? size;
  final Color? color;
  final IconData icon;
  final Color? iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: dark ? Colors.black.withOpacity(0.3) : color,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor,
          size: size,
        ),
      ),
    );
  }
}
