import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterWidget extends StatelessWidget {
  const TCartCounterWidget({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(
          Iconsax.shopping_bag,
          color: Colors.white,
        ),
        Positioned(
          // top: -,
          right: 0,
          child: Container(
            height: 14,
            width: 14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: iconColor,
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
