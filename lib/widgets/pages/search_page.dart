// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta_products/data/posts.dart';

final searchBar = Padding(
  padding: const EdgeInsets.fromLTRB(8, 20, 40, 20),
  child: Container(
    height: 36,
    decoration: BoxDecoration(
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
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        height: 3.5,
        color: Color.fromRGBO(60, 60, 67, 0.6),
      ),
    ),
  ),
);

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          searchBar,
          GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              ...posts.map(
                (e) => (Image.asset(
                  "assets/images/posts/${e.image}.jpg",
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
