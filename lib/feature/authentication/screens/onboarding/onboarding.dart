import 'package:ecomapp/feature/authentication/controlleronboarding/onboardcontroller.dart';
import 'package:ecomapp/feature/authentication/screens/onboarding/widgets/onboardingnav.dart';
import 'package:ecomapp/feature/authentication/screens/onboarding/widgets/onboardingnextbtn.dart';
import 'package:ecomapp/feature/authentication/screens/onboarding/widgets/onboardingskip.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/imagestrings.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/constants/textstrings.dart';
import 'package:ecomapp/utils/device/deviceutility.dart';
import 'package:ecomapp/utils/helpers/helperfunctions.dart';
import 'package:ecomapp/utils/theme/custom_theme/text_theme.dart';
import 'package:ecomapp/utils/theme/custom_theme/textfieldtheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/onboardingpage.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scroll screen
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardWidget(
                image: TImagestrings.screenOne,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardWidget(
                image: TImagestrings.screenTwo,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardWidget(
                image: TImagestrings.screenThree,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Add skip button
          const OnboardingSkipBtn(),

          // Dot navigating smooth page indicator
          const OnboardNavigator(),

          // Circular motion
          const Onboardingnextbtn()
        ],
      ),
    );
  }
}
