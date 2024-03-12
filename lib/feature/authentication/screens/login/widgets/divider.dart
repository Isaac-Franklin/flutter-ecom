import 'package:flutter/material.dart';

class Divider extends StatelessWidget {
  const Divider({
    super.key,
    Color? color,
    required int indent,
    required int endIndent,
    required int thickness,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Divider(
            indent: 60,
            endIndent: 5,
            thickness: 3,
            color: Colors.grey[300],
          ),
        ),
        Text(
          'Or Sign In With',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Flexible(
          child: Divider(
            indent: 5,
            endIndent: 60,
            thickness: 3,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}
