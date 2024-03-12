import 'package:ecomapp/feature/authentication/controlleronboarding/onboardcontroller.dart';
import 'package:ecomapp/utils/device/deviceutility.dart';
import 'package:ecomapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';

class Onboardingnextbtn extends StatelessWidget {
  const Onboardingnextbtn({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: 20,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      child: ElevatedButton(
        onPressed: () {
          OnboardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? Colors.white : Colors.black,
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
