import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta_products/data/users.dart';

import '../classes/post_data.dart';

class Post extends StatefulWidget {
  const Post(
      {super.key,
      required this.name,
      required this.time,
      required this.content,
      required this.comments,
      required this.likes});

  final String name;
  final String time;
  final String content;
  final List<PostData> comments;
  final int likes;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;

  heartTap() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final image =
        users.where((element) => element.username == widget.name).single.image;

    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromRGBO(242, 242, 242, 1)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/profile/$image.png",
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.time,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(160, 160, 160, 1)),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(
                            "assets/icons/dots.svg",
                            width: 24,
                            height: 24,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Text(
                  widget.content,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: heartTap,
                      icon: SvgPicture.asset(
                        "assets/icons/${isLiked ? "heart_on" : "heart"}.svg",
                      ),
                      style: IconButton.styleFrom(
                        fixedSize: const Size(0, 24),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/message.svg",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      "assets/icons/repost.svg",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      "assets/icons/send.svg",
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
                Text(
                  "${widget.comments.length} replies  ·  ${widget.likes} likes",
                  style: const TextStyle(
                    color: Color.fromRGBO(
                      160,
                      160,
                      160,
                      1,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
