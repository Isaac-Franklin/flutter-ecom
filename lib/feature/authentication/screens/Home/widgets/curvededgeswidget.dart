import 'package:ecomapp/feature/authentication/screens/Home/widgets/curvededges.dart';
import 'package:flutter/material.dart';

class TClipPathWidget extends StatelessWidget {
  const TClipPathWidget({
    super.key,
    this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCurvedEdgesClipper(),
      child: child,
    );
  }
}
