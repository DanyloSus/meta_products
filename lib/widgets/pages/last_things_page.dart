import 'package:flutter/material.dart';

import '../ui/custom_bottom_nav.dart';
import '../whats_new.dart';

class LastThingsPage extends StatelessWidget {
  const LastThingsPage(
      {super.key,
      required this.heading,
      required this.changePage,
      required this.page});

  final PreferredSizeWidget heading;
  final Function(int) changePage;
  final int page;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: heading,
          body: const TabBarView(children: [
            Center(
              child: Text(
                "Поки нічого нового...",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  WhatsNew(
                    userImage: "raul",
                    name: "Raul",
                    whatDid: "уподобав ваш пост",
                    time: "1г",
                    imagePost: "Tokyo",
                  ),
                  WhatsNew(
                    userImage: "raul",
                    name: "Raul",
                    whatDid: "уподобав ваш пост",
                    time: "1г",
                    imagePost: "Tokyo",
                  ),
                  WhatsNew(
                    userImage: "raul",
                    name: "Raul",
                    whatDid: "уподобав ваш пост",
                    time: "1г",
                    imagePost: "Tokyo",
                  ),
                  WhatsNew(
                    userImage: "raul",
                    name: "Raul",
                    whatDid: "уподобав ваш пост",
                    time: "1г",
                    imagePost: "Tokyo",
                  ),
                ],
              ),
            ),
          ]),
          bottomNavigationBar: CustomBottomNavigation(changePage, page),
        ),
      ),
    );
  }
}
