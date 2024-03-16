import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

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
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            Image.asset(
              "assets/images/profile/raul.png",
              width: 48,
              height: 48,
            ),
            const SizedBox(
              width: 16,
            ),
            const Expanded(
              child: SizedBox(
                width: 999,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "2d",
                          style: TextStyle(
                              color: Color.fromRGBO(184, 184, 184, 1)),
                        ),
                      ],
                    ),
                    Text(
                      "Followed you",
                      style: TextStyle(color: Color.fromRGBO(184, 184, 184, 1)),
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
