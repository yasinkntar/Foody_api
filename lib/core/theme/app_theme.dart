import 'package:flutter/material.dart';
import 'package:foody/core/constant/colors.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
      primaryColor: kPrimaryColor,
      appBarTheme: AppBarTheme(
          backgroundColor: kColorWhite,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: kFillinput)),
      scaffoldBackgroundColor: kColorWhite,
      snackBarTheme: SnackBarThemeData(backgroundColor: kColorError),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: kFillinput,
        alignLabelWithHint: true,

        // contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        // hintStyle: GoogleFonts.sen().copyWith(
        //     fontSize: 14, fontWeight: FontWeight.w400, color: khintColor),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kFillinput,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kFillinput),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kFillinput,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kFillinput,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
      ));

  // static final darkTheme = ThemeData(
  //     brightness: Brightness.dark,
  //     primaryColor: darkPrimaryColor,
  //     visualDensity: VisualDensity.adaptivePlatformDensity,
  //     textButtonTheme: TextButtonThemeData(
  //         style: TextButton.styleFrom(foregroundColor: darkTextColor)),
  //     colorScheme: ColorScheme.light(secondary: lightSecondaryColor)
  //         .copyWith(background: darkBackgroundColor));
}
