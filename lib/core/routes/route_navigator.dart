import 'package:flutter/material.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/register.dart';
import 'package:soor_user_app/features/auth/presentation/ui/pages/sign_in.dart';

class RouteNavigator{
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.signIn:
        return MaterialPageRoute(
          builder: (context) => const SignIn(),
        );
      case AppRoutes.register:
        return MaterialPageRoute(
          builder: (context) => const Register(),
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