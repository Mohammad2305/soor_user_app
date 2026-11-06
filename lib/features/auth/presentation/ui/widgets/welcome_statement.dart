import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/strings.dart';


class WelcomeStatement extends StatelessWidget {
  const WelcomeStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      children: [
        Text(
          "welcome back!".firstCharacterUpper,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "With Sour... you’re all set, log in now."
              .firstCharacterUpper,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
