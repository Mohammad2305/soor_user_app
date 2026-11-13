import 'package:flutter/material.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/change_password.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/forget_password.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/register.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/sign_in.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/success.dart';
import '../../features/auth/presentation/ui/pages/phone_verification.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/register.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/sign_in.dart';

import '../../features/splash/presentation/screens/splash_screen.dart';

class RouteNavigator{
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case AppRoutes.signIn:
        return MaterialPageRoute(
          builder: (context) => const SignIn(),
        );
      case AppRoutes.register:
        return MaterialPageRoute(
          builder: (context) => const Register(),
        );
      case AppRoutes.phoneCheck:
        return MaterialPageRoute(
          builder: (context) => const PhoneVerification(),
        );
      case AppRoutes.verificationSuccess:
        return MaterialPageRoute(
          builder: (context) => const Success(),
        );
      case AppRoutes.forgetPassword:
        return MaterialPageRoute(
          builder: (context) => const ForgetPassword(),
        );
      case AppRoutes.changePassword:
        return MaterialPageRoute(
          builder: (context) => const ChangePassword(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}