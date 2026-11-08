import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/const/colors.dart';
import '../../../../../core/extensions/main_app.dart';
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
            title: Text("Agree to the Terms of Service and Privacy Policy", style: Theme.of(context).textTheme.bodyMedium,),
            value: false,
            onChanged: (val) {},
          ),
          CustomButton(
            onTap: () {},
            icon: Icon(Icons.arrow_back_ios_sharp),
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: AppBoxDecoration.general(AppColors.mainColor, 8.r),
            label: "register".firstCharacterUpper,
          ),
        ],
      ).scrolling,
    );
  }
}
