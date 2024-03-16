import 'package:flutter/material.dart';

class SearchAccount extends StatelessWidget {
  const SearchAccount(
      {super.key,
      required this.username,
      required this.name,
      required this.followers});

  final String username;
  final String name;
  final int followers;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(
              242,
              242,
              242,
              1,
            ),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/profile/$name.png",
              width: 48,
              height: 48,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: SizedBox(
                width: 999,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      username,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(184, 184, 184, 1),
                      ),
                    ),
                    Text(
                      "$followers followers",
                      style: const TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 113,
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
                  "Follow",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(38, 38, 38, 1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
