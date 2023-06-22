import 'package:flutter/material.dart';

abstract class AppColors {
  static Color white = const Color(0xffFFFFFF);
  static Color purple = const Color(0xff6C0D60);
  static Color darkPurple = const Color(0xff2B0626);
  static Color mediumPink = const Color(0xffCB6CE6);
  static Color lightPink = const Color(0xffF2C5FF);
  static Color stroke = const Color(0xffA02D91);
  static List<Color> buttonGradient = const <Color>[
    Color(0xffFBEBFF),
    Color(0xffB266FF),
  ];
  static List<Color> backgroundGradient = const <Color>[
    Color(0xff24001F),
    Color(0xffA02D91),
  ];
}

abstract class PrimaryButtonProperties {
  static double size = 243;
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.purple,
  );
  static Color iconColor = AppColors.purple;
  static BoxDecoration boxDecoration = BoxDecoration(
      boxShadow: kElevationToShadow[6],
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.buttonGradient,
      ));
}

abstract class SecondaryButtonProperties {
  static double size = 243;
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.lightPink,
  );
  static Color iconColor = AppColors.lightPink;
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: AppColors.stroke));
}

abstract class AppBackgroundProperties {
  static BoxDecoration boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: AppColors.backgroundGradient,
    ),
  );
}

abstract class DisplayTextProperties {
  static TextStyle textStyle = const TextStyle(fontFamily: "Bigelow Rules", fontSize: 36);
}

abstract class InputDecorationProperties {
  static TextStyle textDecoration = TextStyle(color: AppColors.mediumPink);

  static InputDecoration newInputDecoration(String hintText, String labelText) {
    return InputDecoration(
      hintStyle: TextStyle(color: AppColors.mediumPink),
      hintText: hintText,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.stroke,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        gapPadding: 0,
        borderSide: BorderSide(
          color: AppColors.stroke,
        ),
      ),
      labelText: labelText,
      labelStyle: TextStyle(
        backgroundColor: AppColors.stroke,
      ),
    );
  }
}
