import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta_products/data/users.dart';
import 'package:meta_products/widgets/search_account.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 36,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Color.fromRGBO(118, 118, 128, 0.12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: SvgPicture.asset(
                      "assets/icons/search.svg",
                      height: 14,
                    ),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  height: 3.5,
                  color: Color.fromRGBO(60, 60, 67, 0.6),
                ),
              ),
            ),
            ...users.map(
              (e) => (SearchAccount(
                username: e.username,
                name: e.image,
                followers: e.subscribers.length,
              )),
            ),
            ...users.map(
              (e) => (SearchAccount(
                username: e.username,
                name: e.image,
                followers: e.subscribers.length,
              )),
            ),
            ...users.map(
              (e) => (SearchAccount(
                username: e.username,
                name: e.image,
                followers: e.subscribers.length,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
