import 'package:flutter/material.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';
<<<<<<< HEAD
=======
import '../const/colors.dart';
>>>>>>> bf1058c581fa324a0c4767cc942862c38062abd3
import 'app_input_border_style.dart';

class AppInputThemes{
  static InputDecorationThemeData inputField = InputDecorationThemeData(
    filled: true,
    border: AppBorderStyles.border,
    hintStyle: AppTextStyles.textFtS16FW400.copyWith(color: Color(0xff878787)),
    focusedBorder: AppBorderStyles.focusedBorder,
    enabledBorder: AppBorderStyles.enabledBorder,
    errorBorder: AppBorderStyles.errorBorder,
    disabledBorder: AppBorderStyles.disabledBorder,
  );
}