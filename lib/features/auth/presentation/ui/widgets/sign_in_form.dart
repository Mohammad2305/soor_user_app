import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:soor_user_app/core/extensions/paddings.dart';
=======
import 'package:soor_user_app/core/extensions/main_app.dart';
>>>>>>> bf1058c581fa324a0c4767cc942862c38062abd3
import '../../../../../core/const/colors.dart';
import '../../../../../core/extensions/strings.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_input.dart';
import '../../../../../core/widgets/password_input.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 16.h,
        children: [
          CustomInput(
            inputTitle: "phone number".firstCharacterUpper,
            inputController: TextEditingController(),
            hintText: "+966 000 000 00",
          ),
          PasswordInput(inputController: TextEditingController()),
          TextButton(
<<<<<<< HEAD
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.forgetPassword);
            },
=======
            onPressed: () {},
>>>>>>> bf1058c581fa324a0c4767cc942862c38062abd3
            child: Text(
              "forget password".firstCharacterUpper,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppColors.mainColor),
            ),
          ),
          CustomButton(
<<<<<<< HEAD
            onTap: () {},
            icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
            textColor: Colors.white,
            label: "sign in".firstCharacterUpper,
          ),
        ],
      ),
    ).onlyPadding(bottom: 225.h);
=======
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.register);
            },
            icon: Icon(Icons.arrow_back_ios_sharp),
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
            label: "sign in".firstCharacterUpper,
          ),
        ],
      ).scrolling,
    );
>>>>>>> bf1058c581fa324a0c4767cc942862c38062abd3
  }
}
