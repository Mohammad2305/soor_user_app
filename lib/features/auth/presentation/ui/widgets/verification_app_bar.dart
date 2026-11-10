import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const VerificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsPadding: EdgeInsets.symmetric(horizontal: 4.w),
      leading: SizedBox.shrink(),
      actions: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            child: Icon(
              Icons.arrow_forward,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );


  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(375.w, 58.h);
}
