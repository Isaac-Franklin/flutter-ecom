// ignore: file_names
import 'package:ecomapp/feature/authentication/screens/onboarding/onboarding.dart';
import 'package:ecomapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:get/get.dart';

class EcomApp extends StatelessWidget {
  const EcomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
