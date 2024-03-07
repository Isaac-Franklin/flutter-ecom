import 'package:ecomapp/utils/device/deviceutility.dart';
import 'package:flutter/material.dart';

class OnboardingSkipBtn extends StatelessWidget {
  const OnboardingSkipBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight() - 5,
      right: 20,
      child: const TextButton(
        onPressed: null,
        child: Text(
          'Skip',
        ),
      ),
    );
  }
}
