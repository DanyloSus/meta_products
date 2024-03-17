import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Menu",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
              const Text(
                "Shortcuts",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              OutlineGradientButton(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(56, 76, 255, 1),
                  Color.fromRGBO(0, 163, 255, 1),
                ]),
                strokeWidth: 1,
                radius: const Radius.circular(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      "Jobs",
                      colors: const [
                        Color.fromRGBO(56, 76, 255, 1),
                        Color.fromRGBO(0, 163, 255, 1),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/job_on.svg")
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              OutlineGradientButton(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(56, 76, 255, 1),
                  Color.fromRGBO(0, 163, 255, 1),
                ]),
                strokeWidth: 1,
                radius: const Radius.circular(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      "COVID-19 information Center",
                      colors: const [
                        Color.fromRGBO(56, 76, 255, 1),
                        Color.fromRGBO(0, 163, 255, 1),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/info_on.svg")
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              OutlineGradientButton(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(56, 76, 255, 1),
                  Color.fromRGBO(0, 163, 255, 1),
                ]),
                strokeWidth: 1,
                radius: const Radius.circular(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      "Marketplace",
                      colors: const [
                        Color.fromRGBO(56, 76, 255, 1),
                        Color.fromRGBO(0, 163, 255, 1),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/globa_on.svg")
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              OutlineGradientButton(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(56, 76, 255, 1),
                  Color.fromRGBO(0, 163, 255, 1),
                ]),
                strokeWidth: 1,
                radius: const Radius.circular(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      "Friends",
                      colors: const [
                        Color.fromRGBO(56, 76, 255, 1),
                        Color.fromRGBO(0, 163, 255, 1),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/addFriend_on.svg")
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              OutlineGradientButton(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(56, 76, 255, 1),
                  Color.fromRGBO(0, 163, 255, 1),
                ]),
                strokeWidth: 1,
                radius: const Radius.circular(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      "Events",
                      colors: const [
                        Color.fromRGBO(56, 76, 255, 1),
                        Color.fromRGBO(0, 163, 255, 1),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/calendar_on.svg")
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              OutlineGradientButton(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(56, 76, 255, 1),
                  Color.fromRGBO(0, 163, 255, 1),
                ]),
                strokeWidth: 1,
                radius: const Radius.circular(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      "Gaming",
                      colors: const [
                        Color.fromRGBO(56, 76, 255, 1),
                        Color.fromRGBO(0, 163, 255, 1),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/games_on.svg")
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              OutlineGradientButton(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(56, 76, 255, 1),
                  Color.fromRGBO(0, 163, 255, 1),
                ]),
                strokeWidth: 1,
                radius: const Radius.circular(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      "Weather",
                      colors: const [
                        Color.fromRGBO(56, 76, 255, 1),
                        Color.fromRGBO(0, 163, 255, 1),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/cloud_on.svg")
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              OutlineGradientButton(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(56, 76, 255, 1),
                  Color.fromRGBO(0, 163, 255, 1),
                ]),
                strokeWidth: 1,
                radius: const Radius.circular(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      "Saved",
                      colors: const [
                        Color.fromRGBO(56, 76, 255, 1),
                        Color.fromRGBO(0, 163, 255, 1),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/save_on.svg")
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(85, 85, 85, 1),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "See more",
                      style: TextStyle(color: Color.fromRGBO(85, 85, 85, 1)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(
                  170,
                  170,
                  170,
                  1,
                ),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Community resources",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                SvgPicture.asset(
                  "assets/icons/contacts.svg",
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(
                  170,
                  170,
                  170,
                  1,
                ),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Help & Support",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                SvgPicture.asset(
                  "assets/icons/lightBulb .svg",
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(
                  170,
                  170,
                  170,
                  1,
                ),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Settings & Privacy",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                SvgPicture.asset(
                  "assets/icons/settings.svg",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
