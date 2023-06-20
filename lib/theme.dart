import 'package:flutter/material.dart';

abstract class AppColors {
  static Color purple = const Color(0xff6C0D60);
  static Color darkPurple = const Color(0xff2B0626);
  static Color lightPink = const Color(0xffF2C5FF);
  static Color stroke = const Color(0xffA02D91);
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
            boxShadow: kElevationToShadow[6],
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.buttonGradient,
            )
        );
}

abstract class SecondaryButtonPropreties {
  static double size = 243;
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.lightPink,
  );
  static Color iconColor = AppColors.lightPink;
  static BoxDecoration boxDecoration = BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColors.stroke)
        );
}
