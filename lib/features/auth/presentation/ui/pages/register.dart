import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soor_user_app/core/extensions/main_app.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import 'package:soor_user_app/features/auth/presentation/ui/widgets/register_form.dart';
import '../../../../../core/const/assets.dart';
import '../../../../../core/extensions/strings.dart';
import '../widgets/state_ask.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
          child: Column(
            spacing: 24.h,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.logo),
              Text(
                "create account!".firstCharacterUpper,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              RegisterForm(),
              StateAsk(
                ask: "do you already have an account?",
                answer: "sign in",
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.signIn);
                },
              ),
            ],
          ),
        ).scrolling,
      ),
    );
  }
}
