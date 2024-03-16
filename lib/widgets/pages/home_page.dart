import 'package:flutter/material.dart';

import '../../data/posts.dart';
import '../post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...posts.map(
          (e) => (Post(
            comments: e.comments,
            description: e.description,
            image: e.image,
            likes: e.likes,
            userName: e.username,
          )),
        ),
      ],
    );
  }
}
