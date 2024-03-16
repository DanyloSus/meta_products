// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta_products/widgets/users/posts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/globe.svg",
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/inst.svg",
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        SvgPicture.asset(
                          "assets/icons/menu.svg",
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Krunal Modi",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Row(
                          children: [
                            Text("krunal"),
                            SizedBox(
                              width: 8,
                            ),
                            Chip(
                              color: MaterialStatePropertyAll(
                                Color.fromRGBO(249, 249, 249, 1),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              side: BorderSide.none,
                              label: Text(
                                "threds.ni",
                                style: TextStyle(
                                  color: Color.fromRGBO(180, 180, 180, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 175,
                          child: Text(
                            "Curious to learn something unique or challenging",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Text(
                          "2 followers",
                          style: TextStyle(
                            color: Color.fromRGBO(184, 184, 184, 1),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Image.asset(
                      "assets/images/profile/krunal.png",
                      width: 74,
                      height: 72,
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 176,
                      height: 35,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            side: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(205, 205, 205, 1),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Edit profile",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(38, 38, 38, 1)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 176,
                      height: 35,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            side: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(205, 205, 205, 1),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Share profile",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(38, 38, 38, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
                Posts()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
