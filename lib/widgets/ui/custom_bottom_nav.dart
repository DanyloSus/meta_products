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
              height: 23,
            ),
          ),
          label: "123",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/${page == 1 ? "search_on" : "search"}.svg",
            height: 23,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/add.svg",
            height: 23,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/${page == 3 ? "heart_on" : "heart"}.svg",
            height: 23,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/profile/${page == 4 ? "Roma_on" : "Roma"}.png",
            height: 23,
          ),
          label: "",
        ),
      ],
    );
  }
}
