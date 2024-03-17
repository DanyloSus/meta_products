import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key, required this.page, required this.setPage});

  final int page;
  final Function(int) setPage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: IconButton(
                  onPressed: () {
                    setPage(0);
                  },
                  padding: const EdgeInsets.all(0),
                  icon: SvgPicture.asset(
                    "assets/icons/${page == 0 ? "home_on" : "home"}.svg",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
                height: 20,
                child: IconButton(
                  onPressed: () {
                    setPage(1);
                  },
                  padding: const EdgeInsets.all(0),
                  icon: SvgPicture.asset(
                    "assets/icons/${page == 1 ? "friends_on" : "friends"}.svg",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
                height: 20,
                child: IconButton(
                  onPressed: () {
                    setPage(2);
                  },
                  padding: const EdgeInsets.all(0),
                  icon: SvgPicture.asset(
                    "assets/icons/${page == 2 ? "account_on" : "account"}.svg",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
                height: 20,
                child: IconButton(
                  onPressed: () {
                    setPage(3);
                  },
                  padding: const EdgeInsets.all(0),
                  icon: SvgPicture.asset(
                    "assets/icons/${page == 3 ? "video_on" : "video"}.svg",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
                height: 20,
                child: IconButton(
                  onPressed: () {
                    setPage(4);
                  },
                  padding: const EdgeInsets.all(0),
                  icon: SvgPicture.asset(
                    "assets/icons/${page == 4 ? "notifications_on" : "notifications"}.svg",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
                height: 20,
                child: IconButton(
                  onPressed: () {
                    setPage(5);
                  },
                  padding: const EdgeInsets.all(0),
                  icon: SvgPicture.asset(
                    "assets/icons/${page == 5 ? "menu_on" : "menu"}.svg",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
