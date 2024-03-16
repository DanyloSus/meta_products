import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation(this.onClick, this.page, {super.key});

  final Function(int) onClick;
  final int page;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (value) => {onClick(value)},
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: SvgPicture.asset(
              "assets/icons/${page == 0 ? "home_on" : "home"}.svg",
              height: 32,
            ),
          ),
          label: "123",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/${page == 1 ? "search_on" : "search"}.svg",
            height: 32,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/${page == 2 ? "write_on" : "write"}.svg",
            height: 32,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/${page == 3 ? "like_on" : "like"}.svg",
            height: 32,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/${page == 4 ? "account_on" : "account"}.svg",
            height: 32,
          ),
          label: "",
        ),
      ],
    );
  }
}
