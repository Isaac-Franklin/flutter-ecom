import 'package:flutter/material.dart';

class TShadow {
  const TShadow._();
  static final verticalProductShadow = BoxShadow(
    color: Colors.black.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: Colors.black.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
