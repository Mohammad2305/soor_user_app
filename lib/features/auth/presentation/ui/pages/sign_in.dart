import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/const/colors.dart';
import 'package:soor_user_app/core/extensions/strings.dart';
import 'package:soor_user_app/core/themes/app_boxes_decoration.dart';
import 'package:soor_user_app/core/widgets/custom_button.dart';
import 'package:soor_user_app/core/widgets/custom_input.dart';
import 'package:soor_user_app/core/widgets/password_input.dart';
import 'package:soor_user_app/features/auth/presentation/ui/widgets/sign_in_appbar.dart';
import 'package:soor_user_app/features/auth/presentation/ui/widgets/welcome_statement.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SignInAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        child: Column(
          spacing: 24.h,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.logo),
            WelcomeStatement(),
            Column(
              spacing: 16.h,
              children: [
                CustomInput(
                  inputTitle: "phone number".firstCharacterUpper,
                  inputController: TextEditingController(),
                  hintText: "+966 000 000 00",
                ),
                PasswordInput(inputController: TextEditingController()),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "forget password".firstCharacterUpper,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: AppColors.mainColor),
              ),
            ),
            CustomButton(
              onTap: () {},
              icon: Icon(Icons.arrow_back_ios_sharp),
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
              label: "sign in".firstCharacterUpper,
            ),
          ],
        ),
      ),
    );
  }
}
