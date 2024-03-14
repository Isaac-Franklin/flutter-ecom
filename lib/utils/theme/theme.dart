import 'package:ecomapp/utils/device/deviceutility.dart';
import 'package:ecomapp/utils/theme/custom_theme/appbartheme.dart';
import 'package:ecomapp/utils/theme/custom_theme/bottomsheettheme.dart';
import 'package:ecomapp/utils/theme/custom_theme/checkboxtheme.dart';
import 'package:ecomapp/utils/theme/custom_theme/chiptheme.dart';
import 'package:ecomapp/utils/theme/custom_theme/elevatedButtonTheme.dart';
import 'package:ecomapp/utils/theme/custom_theme/outlinedbutton.dart';
import 'package:ecomapp/utils/theme/custom_theme/text_theme.dart';
import 'package:ecomapp/utils/theme/custom_theme/textfieldtheme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    textTheme: TTextTheme.lightTextTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButton.lightElevatedButton,
    outlinedButtonTheme: TOutlinedButton.lightOutLinedButton,
    inputDecorationTheme: TTextFieldTheme.lightTextFieldTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    chipTheme: TChipTheme.lightChipTheme,
    // deviceUtils: TDeviceUtils
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButton.darkElevatedButton,
      outlinedButtonTheme: TOutlinedButton.darkOutLinedButton,
      inputDecorationTheme: TTextFieldTheme.darkTextFieldTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      chipTheme: TChipTheme.darkChipTheme);
}
