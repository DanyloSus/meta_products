import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta_products/widgets/pages/account_page.dart';
import 'package:meta_products/widgets/pages/friends_page.dart';
import 'package:meta_products/widgets/pages/home_page.dart';
import 'package:meta_products/widgets/pages/menu_page.dart';
import 'package:meta_products/widgets/pages/messanger.dart';
import 'package:meta_products/widgets/pages/notif_page.dart';
import 'package:meta_products/widgets/pages/video_page.dart';
import 'package:meta_products/widgets/ui/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int page = 0;

  void changePage(int newPage) {
    setState(() {
      page = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    late Widget activeWidget;
    late PreferredSizeWidget? heading;
    late Widget? footer;

    switch (page) {
      case 0:
        activeWidget = const HomePage();
        footer = null;
        heading = AppBar(
          toolbarHeight: 80,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/logo.svg",
                        height: 23,
                      ),
                      SizedBox(
                        width: 26,
                        height: 26,
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {
                            changePage(6);
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/messanger.svg",
                            height: 26,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              changePage(0);
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/home_on.svg",
                              height: 21,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              changePage(1);
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/friends.svg",
                              height: 21,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              changePage(2);
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/account.svg",
                              height: 21,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              changePage(3);
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/video.svg",
                              height: 21,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              changePage(4);
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/notifications.svg",
                              height: 21,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              changePage(5);
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/menu.svg",
                              height: 21,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case 1:
        activeWidget = const FriendsPage();
        footer = null;
        heading = NavBar(
          setPage: changePage,
          page: page,
        );
      case 2:
        activeWidget = const AccountPage();
        footer = null;
        heading = NavBar(
          setPage: changePage,
          page: page,
        );
      case 3:
        activeWidget = const VideoPage();
        footer = null;
        heading = NavBar(
          setPage: changePage,
          page: page,
        );
      case 4:
        activeWidget = const NotifPage();
        footer = null;
        heading = NavBar(
          setPage: changePage,
          page: page,
        );
      case 5:
        activeWidget = const MenuPage();
        footer = null;
        heading = NavBar(
          setPage: changePage,
          page: page,
        );
      case 6:
        activeWidget = Messanger(() {
          changePage(2);
        });
        footer = null;
        heading = null;
      default:
        activeWidget = const Text("sus");
        heading = NavBar(
          setPage: changePage,
          page: page,
        );
        footer = null;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: heading,
        body: SingleChildScrollView(
          child: activeWidget,
        ),
        bottomNavigationBar: footer,
      ),
      // home: Text("Sus"),
    );
  }
}
