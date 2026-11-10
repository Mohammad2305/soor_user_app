import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import '../../../../../core/const/colors.dart';
import '../../../../../core/extensions/strings.dart';
import '../../../../../core/themes/app_boxes_decoration.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_input.dart';
import '../../../../../core/widgets/password_input.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

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
          CustomInput(
            inputTitle: "email".firstCharacterUpper,
            inputController: TextEditingController(),
            hintText: "enter the email account",
          ),
          CustomInput(
            inputTitle: "name".firstCharacterUpper,
            inputController: TextEditingController(),
            hintText: "enter the name",
          ),
          PasswordInput(inputController: TextEditingController()),
          PasswordInput(
            inputTitle: "confirm",
            inputController: TextEditingController(),
          ),
          CheckboxListTile(
            activeColor: Color(0xff2D9EC4),
            checkboxScaleFactor: 2,
            controlAffinity: ListTileControlAffinity.leading,
            title: Row(
              children: [
                Text(
                  "Agree service terms and ",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {},
                  child: Text(
                    "privacy policy",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ],
            ),
            value: true,
            onChanged: (val) {},
          ),
          CustomButton(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.phoneCheck);
              // Navigator.pushNamed(context, AppRoutes.signIn);
            },
            icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
            label: "register".firstCharacterUpper,
          ).onlyPadding(bottom: 40.h),
        ],
      ),
    );
  }
}
