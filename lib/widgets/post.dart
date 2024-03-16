import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:meta_products/data/users.dart";

class Post extends StatefulWidget {
  const Post({
    super.key,
    required this.userName,
    required this.description,
    required this.image,
    required this.comments,
    required this.likes,
  });

  final String userName;
  final String description;
  final String image;
  final int comments;
  final int likes;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;

  void heartTouch() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(212, 212, 212, 1),
          ),
          bottom: BorderSide(
            color: Color.fromRGBO(212, 212, 212, 1),
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 11),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 13, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/profile/${users.firstWhere((element) => element.username == widget.userName).image}.png",
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Text(
                      widget.userName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "assets/icons/dots.svg",
                  semanticsLabel: "more",
                )
              ],
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Image.asset(
            "assets/images/posts/${widget.image}.jpg",
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(7, 13, 15, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: heartTouch,
                          icon: SvgPicture.asset(
                            "assets/icons/${isLiked ? "heart_on" : "heart"}.svg",
                            height: 23,
                          ),
                          style: IconButton.styleFrom(
                              fixedSize: const Size(23, 23)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          "assets/icons/comments.svg",
                          height: 23,
                        ),
                        const SizedBox(
                          width: 17,
                        ),
                        SvgPicture.asset(
                          "assets/icons/send.svg",
                          height: 23,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/icons/favourite.svg",
                      height: 23,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 9,
                  ),
                  Text(
                    "${isLiked ? widget.likes + 1 : widget.likes} вподобань",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.userName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        widget.description,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Переглянути всі коментарі (${widget.comments})",
                    style: const TextStyle(
                      color: Color.fromRGBO(142, 142, 142, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
