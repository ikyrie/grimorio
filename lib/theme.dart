import 'package:flutter/material.dart';

abstract class AppColors {
  static Color purple = const Color(0xff6C0D60);
  static Color darkPurple = const Color(0xff2B0626);
  static List<Color> buttonGradient = const <Color>[Color(0xffFBEBFF), Color(0xffB266FF),];

}

abstract class PrimaryButtonPropreties {
  static double size = 243;
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.purple,
  );
  static Color iconColor = AppColors.purple;
  static BoxDecoration boxDecoration = BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.buttonGradient,
            )
        );
}
