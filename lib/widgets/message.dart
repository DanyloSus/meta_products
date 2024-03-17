import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(56, 76, 255, 1),
              Color.fromRGBO(0, 163, 255, 1),
            ],
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/posts/emma.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "You: Yes. 08:36 AM",
                      style: TextStyle(
                        color: Color.fromRGBO(85, 85, 85, 1),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SvgPicture.asset("assets/icons/checked_on.svg")
          ],
        ),
      ),
    );
  }
}
