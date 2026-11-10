import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/extensions/main_app.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import 'package:soor_user_app/features/auth/presentation/ui/widgets/sign_in_appbar.dart';
import 'package:soor_user_app/features/auth/presentation/ui/widgets/sign_in_form.dart';
import 'package:soor_user_app/features/auth/presentation/ui/widgets/state_ask.dart';
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
            SignInForm(),
            StateAsk(
              ask: "don't have an account?",
              answer: "new account",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.register);
              },
            ),
          ],
        ),
      ).scrolling,
    );
  }
}
