import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_user_app/core/routes/routes.dart';
import 'core/routes/route_navigator.dart';
import 'core/themes/themes.dart';

class SoorUserApp extends StatelessWidget {
  const SoorUserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteNavigator.onGenerateRoute,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: ThemeMode.dark,
          supportedLocales: [
            Locale('en'), // English
            Locale('ar'), // Arabic
          ],
          title: 'Soor User App',
          initialRoute: AppRoutes.signIn,
        );
      },
    );
  }
}
