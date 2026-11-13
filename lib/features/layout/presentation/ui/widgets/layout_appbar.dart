import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_user_app/core/const/assets.dart';
import 'package:soor_user_app/core/extensions/paddings.dart';

class LayoutAppbar extends StatelessWidget implements PreferredSizeWidget {
  const LayoutAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 130.w,
      leading: SvgPicture.asset(AppAssets.logo).symmetricPadding(horizontal: 10.w),
      actionsPadding: EdgeInsets.symmetric(horizontal: 10.w),
      actions: [
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            child: Icon(Icons.notifications, color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(375.w, 58.h);
}
