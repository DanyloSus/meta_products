import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.name,
    required this.description,
    required this.time,
    required this.imageProfile,
    required this.image,
    required this.likes,
    required this.comments,
  });

  final String name;
  final String description;
  final String time;
  final String imageProfile;
  final String image;
  final int likes;
  final int comments;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom:
              BorderSide(color: Color.fromRGBO(170, 170, 170, 1), width: 0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/profile/$imageProfile.png",
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 999,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 196,
                              child: Text(
                                name,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              time,
                              style: const TextStyle(
                                color: Color.fromRGBO(85, 85, 85, 1),
                                fontSize: 11,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/dots.svg",
                      width: 3,
                      height: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          Image.asset(
            "assets/images/posts/$image.jpg",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/like.svg",
                      height: 18,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SvgPicture.asset(
                      "assets/icons/comments.svg",
                      height: 18,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SvgPicture.asset(
                      "assets/icons/send.svg",
                      height: 18,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/roundLike.svg"),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Liked by $likes people",
                          style: const TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "$comments comments",
                      style: const TextStyle(
                        fontSize: 11,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
