import 'package:ecomapp/feature/authentication/controlleronboarding/onboardcontroller.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/device/deviceutility.dart';
import 'package:ecomapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardNavigator extends StatelessWidget {
  const OnboardNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      // left: TDeviceUtils.getScreenWidth(context) / 2.4,
      left: 20,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
