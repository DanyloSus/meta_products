import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta_products/data/posts.dart';
import 'package:meta_products/data/users.dart';
import 'package:meta_products/widgets/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: Color.fromRGBO(170, 170, 170, 1), width: 0.5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/profile/sanji.png",
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 230,
                        height: 34,
                        child: Chip(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          side: BorderSide.none,
                          color: const MaterialStatePropertyAll(
                              Color.fromRGBO(238, 238, 238, 0.5)),
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "What's on your mind, Sanjay?",
                                style: TextStyle(
                                    color: Color.fromRGBO(153, 153, 153, 1)),
                              ),
                              SvgPicture.asset(
                                "assets/icons/images.svg",
                                width: 13,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    SvgPicture.asset(
                      "assets/icons/search.svg",
                      width: 30,
                      height: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      side: BorderSide.none,
                      color: const MaterialStatePropertyAll(
                          Color.fromRGBO(249, 197, 15, 0.1)),
                      label: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/reels.svg",
                            width: 21,
                            height: 19,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          const Text(
                            "Reels",
                            style: TextStyle(
                              color: Color.fromRGBO(249, 197, 15, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Chip(
                      side: BorderSide.none,
                      color: const MaterialStatePropertyAll(
                          Color.fromRGBO(68, 192, 65, 0.1)),
                      label: Row(
                        children: [
                          Image.asset(
                            "assets/icons/room.png",
                            width: 21,
                            height: 19,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          const Text(
                            "Room",
                            style: TextStyle(
                              color: Color.fromRGBO(68, 192, 65, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Chip(
                      side: BorderSide.none,
                      color: const MaterialStatePropertyAll(
                          Color.fromRGBO(248, 89, 0, 0.1)),
                      label: Row(
                        children: [
                          Image.asset(
                            "assets/icons/group.png",
                            width: 21,
                            height: 19,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          const Text(
                            "Group",
                            style: TextStyle(
                              color: Color.fromRGBO(248, 89, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Chip(
                      side: BorderSide.none,
                      color: const MaterialStatePropertyAll(
                          Color.fromRGBO(72, 107, 229, 0.1)),
                      label: Row(
                        children: [
                          Image.asset(
                            "assets/icons/live.png",
                            width: 21,
                            height: 19,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          const Text(
                            "Live",
                            style: TextStyle(
                              color: Color.fromRGBO(72, 107, 229, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          child: Image.asset(
                            "assets/images/profile/sanji.png",
                            width: 90,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SvgPicture.asset("assets/icons/addStory.svg")
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            ...posts.map(
              (e) => (Post(
                name: e.username,
                description: e.description,
                time: e.time,
                imageProfile: users
                    .where((element) => element.username == e.username)
                    .single
                    .image,
                image: e.image,
                likes: e.likes,
                comments: e.comments,
              )),
            ),
          ],
        )
      ],
    );
  }
}
