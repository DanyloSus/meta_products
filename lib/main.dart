import "package:flutter/material.dart";

import "package:meta_products/widgets/pages/last_things_page.dart";
import "package:meta_products/widgets/pages/messages_page.dart";
import "package:meta_products/widgets/pages/user_page.dart";
import "package:meta_products/widgets/ui/custom_app_bar.dart";
import "package:meta_products/widgets/ui/custom_bottom_nav.dart";
import "package:meta_products/widgets/ui/custom_tab_bar.dart";
import "package:meta_products/widgets/pages/error_page.dart";
import "package:meta_products/widgets/pages/home_page.dart";
import "package:meta_products/widgets/pages/search_page.dart";

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
        heading = CustomAppBar(
          changePage: () {
            changePage(3);
          },
          toMessages: () {
            changePage(5);
          },
        );
        footer = CustomBottomNavigation(changePage, page);
      case 1:
        activeWidget = const SearchPage();
        heading = null;
        footer = CustomBottomNavigation(changePage, page);
      case 3:
        activeWidget = const SearchPage();
        heading = const CustomTabBar();
        footer = CustomBottomNavigation(changePage, page);
        return LastThingsPage(
            heading: heading, changePage: changePage, page: page);
      case 4:
        activeWidget = const UserPage();
        heading = null;
        footer = CustomBottomNavigation(changePage, page);
      case 5:
        activeWidget = MessagesPage(
          changePage: () {
            changePage(0);
          },
        );
        heading = null;
        footer = null;
      default:
        heading = null;
        activeWidget = const ErrorPage();
        footer = CustomBottomNavigation(changePage, page);
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
