import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';

class BulletedListItem extends StatelessWidget {
  const BulletedListItem({super.key, required this.text});

final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "-",
          style: Styles.textStyleBold14,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
           text,
             style: Styles.textStyleNormal14,
          ),
        ),
      ],
    );
  }
}
