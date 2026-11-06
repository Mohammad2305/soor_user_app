import 'package:flutter/material.dart';
import 'package:soor_user_app/core/themes/app_text_styles.dart';
import '../const/colors.dart';
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