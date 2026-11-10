import 'package:flutter/material.dart';
import '../../../../../core/const/colors.dart';
import '../../../../../core/extensions/strings.dart';

class StateAsk extends StatelessWidget {
  final String ask;
  final String answer;
  final void Function() onPressed;
  const StateAsk({super.key, required this.ask, required this.answer, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ask.firstCharacterUpper,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            answer.firstCharacterUpper,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
