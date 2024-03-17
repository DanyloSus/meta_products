import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta_products/widgets/message.dart';

class Messanger extends StatelessWidget {
  const Messanger(this.changePage, {super.key});

  final Null Function() changePage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: changePage,
                          padding: const EdgeInsets.all(0),
                          icon: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/posts/asus.png",
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Chats",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/camera.svg",
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SvgPicture.asset(
                          "assets/icons/edit.svg",
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 34,
                      width: 276,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: Color.fromRGBO(118, 118, 128, 0.12),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: SvgPicture.asset(
                              "assets/icons/search.svg",
                              height: 14,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          height: 3.5,
                          color: Color.fromRGBO(60, 60, 67, 0.6),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 34,
                      width: 100,
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
                          'Unread',
                          style: TextStyle(
                            color: Color.fromRGBO(85, 85, 85, 1),
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(238, 238, 238, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                  "assets/icons/videoCall.svg"),
                            ),
                          ),
                          const Text(
                            "Create video call",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const Message(),
          const Message(),
          const Message(),
          const Message(),
          const Message(),
          const Message(),
          const Message(),
          const Message(),
          const Message(),
        ],
      ),
    );
  }
}
