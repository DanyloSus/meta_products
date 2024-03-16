import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta_products/data/posts.dart';

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
            tabs: [
              Tab(
                icon: SvgPicture.asset("assets/icons/grid.svg"),
              ),
              Tab(
                icon: SvgPicture.asset("assets/icons/tags.svg"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: TabBarView(controller: _controller, children: [
            GridView.count(
              crossAxisCount: 3,
              children: [
                ...posts.where((element) => element.username == "Roma").map(
                      (e) =>
                          (Image.asset("assets/images/posts/${e.image}.jpg")),
                    )
              ],
            ),
            const Center(
              child: Text(
                "Поки нічого...",
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6)),
              ),
            )
          ]),
        )
      ],
    );
  }
}
