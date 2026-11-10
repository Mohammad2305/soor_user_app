import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/const/assets.dart';
import '../../../../../core/const/colors.dart';
import '../../../../../core/extensions/main_app.dart';
import '../../../../../core/extensions/paddings.dart';
import '../../../../../core/extensions/strings.dart';
import '../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/password_input.dart';
import '../widgets/verification_app_bar.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VerificationAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        child: Column(
          spacing: 24.h,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.logo),
            Text(
              "reset password".firstCharacterUpper,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Form(
              child: Column(
                spacing: 32.h,
                children: [
                  PasswordInput(inputController: TextEditingController()),
                  PasswordInput(
                    inputTitle: "confirm",
                    inputController: TextEditingController(),
                  ),
                  CustomButton(
                    onTap: () {},
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
                    label: "save".firstCharacterUpper,
                  ).onlyPadding(bottom: 40.h),
                ],
              ),
            ),
          ],
        ),
      ).scrolling,
    );
  }
}
