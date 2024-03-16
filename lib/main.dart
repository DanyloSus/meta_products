import 'package:flutter/material.dart';
import 'package:meta_products/widgets/pages/activity_page.dart';
import 'package:meta_products/widgets/pages/error_page.dart';
import 'package:meta_products/widgets/pages/home_page.dart';
import 'package:meta_products/widgets/pages/new_thread.dart';
import 'package:meta_products/widgets/pages/profile_page.dart';
import 'package:meta_products/widgets/pages/search_page.dart';
import 'package:meta_products/widgets/ui/bottom_nav_bar.dart';

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
        heading = null;
        footer = CustomBottomNavigation(changePage, page);
      case 1:
        activeWidget = const SearchPage();
        heading = null;
        footer = CustomBottomNavigation(changePage, page);
      case 2:
        activeWidget = const NewThread();
        heading = AppBar(
          title: const Text(
            "New Thread",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        );
        footer = CustomBottomNavigation(changePage, page);
      case 3:
        activeWidget = const ActivityPage();
        heading = null;
        footer = CustomBottomNavigation(changePage, page);
      case 4:
        activeWidget = const ProfilePage();
        heading = null;
        footer = CustomBottomNavigation(changePage, page);
      default:
        activeWidget = const ErrorPage();
        heading = null;
        footer = CustomBottomNavigation(changePage, page);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: heading,
        body: SingleChildScrollView(child: activeWidget),
        bottomNavigationBar: footer,
      ),
    );
  }
}
