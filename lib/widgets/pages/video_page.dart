import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Watch",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 56, 76, 255),
                  Color.fromARGB(255, 0, 163, 255),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "For you",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 38,
                  ),
                  Text(
                    "Live",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 38,
                  ),
                  Text(
                    "Music",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 38,
                  ),
                  Text(
                    "Gaming",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 38,
                  ),
                  Text(
                    "Follow",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 500,
            child: Center(
              child: Text(
                "It's nothing here now :(",
                style: TextStyle(color: Color.fromRGBO(204, 204, 204, 1)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
