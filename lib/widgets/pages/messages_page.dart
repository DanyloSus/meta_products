import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta_products/data/users.dart';

final searchBar = Container(
  height: 36,
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
);

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key, required this.changePage});

  final Null Function() changePage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: changePage,
                icon: SvgPicture.asset(
                  "assets/icons/back.svg",
                  height: 18,
                ),
              ),
              const Text(
                "Roma",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SvgPicture.asset(
                "assets/icons/addStory.svg",
                height: 18,
              )
            ],
          ),
          const SizedBox(
            height: 21,
          ),
          searchBar,
          const SizedBox(
            height: 7,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ...users.map(
                  (e) => (MessagesRow(image: e.image, name: e.username)),
                ),
                ...users.map(
                  (e) => (MessagesRow(image: e.image, name: e.username)),
                ),
                ...users.map(
                  (e) => (MessagesRow(image: e.image, name: e.username)),
                ),
                ...users.map(
                  (e) => (MessagesRow(image: e.image, name: e.username)),
                ),
                ...users.map(
                  (e) => (MessagesRow(image: e.image, name: e.username)),
                ),
                ...users.map(
                  (e) => (MessagesRow(image: e.image, name: e.username)),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class MessagesRow extends StatelessWidget {
  const MessagesRow({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                "assets/images/profile/$image.png",
                width: 56,
                height: 56,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: SizedBox(
              width: 999,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 13),
                  ),
                  const Text(
                    "Something...",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              const Text(
                "· now",
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                ),
              ),
              const SizedBox(
                width: 23,
              ),
              SvgPicture.asset("assets/icons/photo.svg"),
            ],
          )
        ],
      ),
    );
  }
}
