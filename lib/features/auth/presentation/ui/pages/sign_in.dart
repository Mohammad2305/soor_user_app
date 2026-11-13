import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/const/assets.dart';
<<<<<<< HEAD
import 'package:soor_user_app/core/extensions/main_app.dart';
import 'package:soor_user_app/core/routes/routes.dart';
=======
>>>>>>> bf1058c581fa324a0c4767cc942862c38062abd3
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
<<<<<<< HEAD
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
=======
            Spacer(),
            StateAsk(
              ask: "don't have an account?",
              answer: "new account",
              onPressed: () {},
            ),
          ],
        ),
      ),
>>>>>>> bf1058c581fa324a0c4767cc942862c38062abd3
    );
  }
}
