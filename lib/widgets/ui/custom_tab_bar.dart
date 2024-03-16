import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: const TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Color.fromRGBO(38, 38, 38, 1),
        labelColor: Color.fromRGBO(38, 38, 38, 1),
        unselectedLabelColor: Color.fromRGBO(0, 0, 0, 0.4),
        tabs: [
          Tab(
            text: "Слідкування",
          ),
          Tab(
            text: "Ти",
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
