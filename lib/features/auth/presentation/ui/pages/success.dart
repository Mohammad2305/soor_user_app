import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';
import 'package:soor_user_app/core/extensions/strings.dart';
import '../../../../../core/const/colors.dart';
import '../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../core/widgets/custom_button.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          child: Column(
            children: [
              SvgPicture.asset(
                AppAssets.successful,
              ).onlyPadding(top: 158.h, bottom: 40.h),
              Text(
                "success!️".firstCharacterUpper,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "your account has been successfully created️"
                    .firstCharacterUpper,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacer(),
              CustomButton(
                onTap: () {},
                padding: EdgeInsets.symmetric(vertical: 8.h),
                decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
                textColor: Colors.white,
                label: "sign in".firstCharacterUpper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
