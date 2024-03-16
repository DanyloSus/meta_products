import 'package:flutter/material.dart';

class WhatsNew extends StatelessWidget {
  const WhatsNew({
    super.key,
    required this.userImage,
    required this.name,
    required this.whatDid,
    required this.time,
    required this.imagePost,
  });

  final String userImage;
  final String name;
  final String whatDid;
  final String time;
  final String imagePost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/profile/$userImage.png",
                width: 44,
                height: 44,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 3,
              ),
              Text("$whatDid."),
              const SizedBox(
                width: 3,
              ),
              Text(
                time,
                style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),
              ),
            ],
          ),
          Image.asset(
            "assets/images/posts/Tokyo.jpg",
            width: 44,
            height: 44,
          ),
        ],
      ),
    );
  }
}
