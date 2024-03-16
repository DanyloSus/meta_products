import 'package:flutter/material.dart';
import 'package:meta_products/data/posts.dart';
import 'package:meta_products/widgets/post.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 44,
          child: TabBar(
            controller: _controller,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: const Color.fromRGBO(38, 38, 38, 1),
            labelColor: const Color.fromRGBO(38, 38, 38, 1),
            unselectedLabelColor: const Color.fromRGBO(0, 0, 0, 0.4),
            labelStyle: const TextStyle(fontSize: 16),
            tabs: const [
              Tab(
                text: "Threds",
              ),
              Tab(
                text: "Replies",
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: 999,
            child: TabBarView(controller: _controller, children: [
              Column(
                children: [
                  ...posts
                      .where((element) => element.username == "Krunal Modi")
                      .map(
                        (e) => (Post(
                            name: e.username,
                            time: e.time,
                            content: e.description,
                            comments: e.comments,
                            likes: e.likes)),
                      ),
                ],
              ),
              const Center(
                child: Text(
                  "Поки нічого...",
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6)),
                ),
              )
            ]),
          ),
        )
      ],
    );
  }
}
