import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewThread extends StatelessWidget {
  const NewThread({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/profile/krunal.png",
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "krunal",
              ),
              const Text(
                "Start thread...",
                style: TextStyle(color: Color.fromRGBO(184, 184, 184, 1)),
              ),
              const SizedBox(
                height: 16,
              ),
              SvgPicture.asset(
                "assets/icons/link.svg",
                width: 32,
                height: 32,
              ),
            ],
          )
        ],
      ),
    );
  }
}
