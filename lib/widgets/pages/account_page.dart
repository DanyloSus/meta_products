import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta_products/data/posts.dart';
import 'package:meta_products/data/users.dart';
import 'package:meta_products/widgets/post.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      border: Border.all(color: Colors.white, width: 13)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/images/profile/sanji.png",
                      width: 170,
                      height: 170,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Sanjay Shendy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 32,
                      width: 150,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 56, 76, 255),
                            Color.fromARGB(255, 0, 163, 255)
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text(
                          'Add to story',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 32,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(238, 238, 238, 1),
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text(
                          'Edit profile',
                          style: TextStyle(
                            color: Color.fromRGBO(85, 85, 85, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/dots.svg",
                      height: 22,
                      width: 5,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/lock.svg",
                      width: 32,
                      height: 35,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "You locked your profile",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        GradientText(
                          "Learn more",
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          colors: const [
                            Color.fromARGB(255, 56, 76, 255),
                            Color.fromARGB(255, 0, 163, 255)
                          ],
                          gradientDirection: GradientDirection.ttb,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: Color.fromRGBO(170, 170, 170, 1), width: 0.5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GradientText(
                  "Posts \n ${posts.where((element) => element.username == "Sanjay Shendy").length}",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  colors: const [
                    Color.fromARGB(255, 56, 76, 255),
                    Color.fromARGB(255, 0, 163, 255)
                  ],
                  gradientDirection: GradientDirection.ltr,
                ),
                GradientText(
                  "Friends \n ${users.where((element) => element.username == "Sanjay Shendy").single.friends.length}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  colors: const [
                    Color.fromARGB(255, 56, 76, 255),
                    Color.fromARGB(255, 0, 163, 255)
                  ],
                  gradientDirection: GradientDirection.ltr,
                ),
                GradientText(
                  "Followers \n ${users.where((element) => element.username == "Sanjay Shendy").single.subscribers.length}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  colors: const [
                    Color.fromARGB(255, 56, 76, 255),
                    Color.fromARGB(255, 0, 163, 255)
                  ],
                  gradientDirection: GradientDirection.ltr,
                ),
                GradientText(
                  "Following \n ${users.where((element) => element.username == "Sanjay Shendy").single.subscriptions.length}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  colors: const [
                    Color.fromARGB(255, 56, 76, 255),
                    Color.fromARGB(255, 0, 163, 255)
                  ],
                  gradientDirection: GradientDirection.ltr,
                ),
              ],
            ),
          ),
        ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/bussines.png"),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Founder and CEO at A to Z company Ltd.",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/study.png"),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Studied Computer Science at Harvard University.",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/home.png"),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Lives in Mumbai, Maharastra.",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/map.png"),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "From Mumbai, India.",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/dotsVertGray.svg"),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "See your about info.",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${users.where((element) => element.username == "Sanjay Shendy").single.friends.length} friends posted on your timeline for your birthday",
                    ),
                    SvgPicture.asset(
                      "assets/icons/dotsVert.svg",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 25,
                  width: 100,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 56, 76, 255),
                        Color.fromARGB(255, 0, 163, 255)
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ...posts.where((element) => element.username == "Sanjay Shendy").map(
            (e) => Post(
                name: e.username,
                description: e.description,
                time: e.time,
                imageProfile: users
                    .where((element) => element.username == e.username)
                    .single
                    .image,
                image: e.image,
                likes: e.likes,
                comments: e.comments))
      ],
    );
  }
}
