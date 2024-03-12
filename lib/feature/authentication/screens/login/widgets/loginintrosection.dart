import 'package:ecomapp/utils/constants/imagestrings.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Loginintrosection extends StatelessWidget {
  const Loginintrosection({
    super.key,
    required this.viewmode,
  });

  final bool viewmode;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: TSizes.appHeight,
        ),
        Image(
          height: 50,
          // fit: BoxFit.contain,
          image: AssetImage(
            viewmode ? TImagestrings.lightapplogo : TImagestrings.darkapplogo,
          ),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Text(
          'Welcome back',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          'Login To continue to your account',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
