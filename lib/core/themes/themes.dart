import 'package:flutter/material.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';
import 'package:soor_user_app/core/themes/input_themes.dart';

class AppThemes {
  static ThemeData get darkTheme => ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff141414)),
    scaffoldBackgroundColor: const Color(0xff0d0d0d),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xff212121),
      onPrimary: Color(0xffffffff)
    ),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.textFtS24FW700.copyWith(color: Colors.white),
      bodyMedium: AppTextStyles.textFtS14FW500.copyWith(color: Colors.white),
    ),
    inputDecorationTheme: AppInputThemes.inputField,
  );

  static ThemeData get lightTheme => ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff958888)),
    scaffoldBackgroundColor: const Color(0xffbcb4b4),
    colorScheme: const ColorScheme.light(
      primary: Color(0xffc8c2c2),
        onPrimary: Color(0xff000000)
    ),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.textFtS24FW700.copyWith(color: Colors.black),
      bodyMedium: AppTextStyles.textFtS14FW500.copyWith(color: Colors.black),
    ),
    inputDecorationTheme: AppInputThemes.inputField,
  );
}
