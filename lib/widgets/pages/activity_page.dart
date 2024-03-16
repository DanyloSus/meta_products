import 'package:flutter/material.dart';
import 'package:meta_products/widgets/activity.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Activity",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 113,
                  height: 35,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      backgroundColor: const Color.fromRGBO(10, 9, 9, 1),
                    ),
                    child: const Text(
                      "All",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
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
                      "Replies",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(38, 38, 38, 1)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: 120,
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
                      "Mentions",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(38, 38, 38, 1)),
                    ),
                  ),
                ),
              ],
            ),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
            const Activity(),
          ],
        ),
      ),
    );
  }
}
