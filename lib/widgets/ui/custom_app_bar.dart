import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, required this.changePage, required this.toMessages});

  final Null Function() changePage;
  final Null Function() toMessages;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottomOpacity: 1,
      title: SvgPicture.asset("assets/icons/logo.svg"),
      actions: [
        IconButton(
          onPressed: changePage,
          icon: SvgPicture.asset(
            "assets/icons/heart.svg",
            height: 23,
          ),
        ),
        IconButton(
          onPressed: toMessages,
          icon: SvgPicture.asset(
            "assets/icons/messanger.svg",
            height: 30,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
