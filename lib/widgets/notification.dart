import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(
                width: 205,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Darrell Trivedi has a new story up. What’s your reaction?",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "2 hours ago",
                      style: TextStyle(
                        color: Color.fromRGBO(
                          85,
                          85,
                          85,
                          1,
                        ),
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SvgPicture.asset("assets/icons/dotsVert.svg")
        ],
      ),
    );
  }
}
