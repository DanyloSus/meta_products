import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta_products/data/posts.dart';
import 'package:meta_products/widgets/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/icons/logo.svg",
              height: 42,
            ),
            ...posts.map(
              (e) => (Post(
                name: e.username,
                time: e.time,
                content: e.description,
                likes: e.likes,
                comments: e.comments,
              )),
            ),
            ...posts.map(
              (e) => (Post(
                name: e.username,
                time: e.time,
                content: e.description,
                likes: e.likes,
                comments: e.comments,
              )),
            ),
            ...posts.map(
              (e) => (Post(
                name: e.username,
                time: e.time,
                content: e.description,
                likes: e.likes,
                comments: e.comments,
              )),
            ),
            ...posts.map(
              (e) => (Post(
                name: e.username,
                time: e.time,
                content: e.description,
                likes: e.likes,
                comments: e.comments,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
