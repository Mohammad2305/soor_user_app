import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code_field/flutter_verification_code_field.dart';
import 'package:soor_user_app/core/extensions/main_app.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';
import 'package:soor_user_app/core/extensions/strings.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import 'package:soor_user_app/features/auth/presentation/ui/widgets/state_ask.dart';
import 'package:soor_user_app/features/auth/presentation/ui/widgets/verification_app_bar.dart';
import '../../../../../core/const/colors.dart';
import '../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../core/widgets/custom_button.dart';

class PhoneVerification extends StatelessWidget {
  const PhoneVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VerificationAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8.h,
          children: [
            Text(
              "check".firstCharacterUpper,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Column(
              children: [
                Text(
                  "enter the verification code that we send to you"
                      .firstCharacterUpper,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "+966 000 000 00 00".firstCharacterUpper,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ).onlyPadding(bottom: 16.h),
            VerificationCodeField(
              length: 5,
              size: Size(52.w, 52.h),
            ).onlyPadding(bottom: 73.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 24.w,
              children: [
                Icon(Icons.watch_later_outlined),
                Text("01:00", style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            StateAsk(
              ask: "Didn't receive the code?",
              answer: "Resend",
              onPressed: (){},
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.verificationSuccess);
              },
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
              textColor: Colors.white,
              label: "check".firstCharacterUpper,
            ),
          ],
        ),
      ).scrolling,
    );
  }
}
