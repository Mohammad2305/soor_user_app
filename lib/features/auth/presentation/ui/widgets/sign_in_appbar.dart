import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/const/colors.dart';

class SignInAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SignInAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsPadding: EdgeInsets.symmetric(horizontal: 4.w),
      leading: InkWell(
        onTap: () {},
        child: Icon(Icons.language, color: AppColors.mainColor),
      ),
      titleSpacing: 0,
      title: Text("English", style: TextStyle(color: AppColors.mainColor)),
      actions: [
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            child: Icon(Icons.close, color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(375.w, 58.h);
}
