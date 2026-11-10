import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/const/assets.dart';
import '../../../../../core/const/colors.dart';
import '../../../../../core/extensions/main_app.dart';
import '../../../../../core/extensions/paddings.dart';
import '../../../../../core/extensions/strings.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_input.dart';
import '../widgets/verification_app_bar.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
              "did you forget password?".firstCharacterUpper,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Form(
              child: Column(
                spacing: 32.h,
                children: [
                  CustomInput(
                    inputTitle: "phone number".firstCharacterUpper,
                    inputController: TextEditingController(),
                    hintText: "+966 000 000 00",
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.phoneCheck);
                    },
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
                    label: "send".firstCharacterUpper,
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
