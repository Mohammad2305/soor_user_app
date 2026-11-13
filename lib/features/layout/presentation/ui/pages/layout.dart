import 'package:flutter/material.dart';
import 'package:soor_user_app/core/const/colors.dart';
import 'package:soor_user_app/core/extensions/main_app.dart';
import 'package:soor_user_app/features/layout/presentation/ui/widgets/layout_appbar.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LayoutAppbar(),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(),
      ).scrolling,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index){},
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.electric_bolt), label: "services"),
          BottomNavigationBarItem(icon: Icon(Icons.date_range), label: "bookings"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "more"),
        ]
      ),
    );
  }
}
