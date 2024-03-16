import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta_products/data/posts.dart';
import 'package:meta_products/data/users.dart';
import 'package:meta_products/widgets/users/posts.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: const Color.fromRGBO(250, 250, 250, 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              child: Column(
                children: [
                  heading,
                  const SizedBox(
                    height: 16,
                  ),
                  info,
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Roma",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Just a funny guy from a non-existent app",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  button,
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      spacing: 18,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(199, 199, 204, 1),
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(21),
                              child: SvgPicture.asset(
                                "assets/icons/addStory.svg",
                                width: 18,
                                height: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "New",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const Storie(image: "Example", text: "Beaches"),
                        const Storie(
                          image: "Tokyo",
                          text: "Tokyo",
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Posts(),
        ],
      ),
    );
  }
}

final heading = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(),
    Row(
      children: [
        SvgPicture.asset("assets/icons/private.svg"),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "Roma",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        )
      ],
    ),
    SvgPicture.asset("assets/icons/menu.svg"),
  ],
);

final info = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Image.asset(
      "assets/images/profile/Roma_on.png",
      width: 96,
      height: 96,
      fit: BoxFit.contain,
    ),
    Column(
      children: [
        Text(
          "${posts.where((element) => element.username == "Roma").length}",
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        const Text(
          "Posts",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    ),
    Column(
      children: [
        Text(
          "${users.where(
                (element) => element.subscriptions.contains("Roma"),
              ).length}",
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        const Text(
          "Followers",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    ),
    Column(
      children: [
        Text(
          "${users.where((element) => element.username == "Roma").single.subscriptions.length}",
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        const Text(
          "Following",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    ),
  ],
);

final button = SizedBox(
  width: double.infinity,
  height: 29,
  child: OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
        side: BorderSide(
          width: 1,
          color: Color.fromRGBO(60, 60, 60, 0.18),
        ),
      ),
    ),
    child: const Text(
      "Edit Profile",
      style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(38, 38, 38, 1)),
    ),
  ),
);

class Storie extends StatelessWidget {
  const Storie({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(199, 199, 204, 1),
              width: 1,
            ),
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: Image.asset(
              "assets/images/posts/$image.jpg",
              width: 56,
              height: 56,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
