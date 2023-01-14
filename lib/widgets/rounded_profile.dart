import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/constants.dart';

class RoundedProfile extends StatelessWidget {
  final String imageSource;

  const RoundedProfile({Key? key, required this.imageSource}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 74,
          width: 74,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            border: Border.all(
              color: secondaryColor,
            ),
            borderRadius: BorderRadius.circular(74),
          ),
          child: ClipOval(
            child: Image.asset(
              imageSource,
              height: 70,
              width: 70,
            ),
          ),
        ),
        const Text('novieey'),
        const SizedBox(height: 4),
      ],
    );
  }
}
