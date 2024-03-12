import 'package:ecomapp/feature/authentication/screens/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  var currentPageIndex = 0.obs;

  // Update current index page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  // jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // update current index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      pageController.jumpToPage(currentPageIndex.value + 1);
    }
  }

  // update current index and jump to the last page
  void skipPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      currentPageIndex.value = 2;
      pageController.jumpToPage(2);
    }
  }
}
