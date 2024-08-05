import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';

class WhenEmptyList extends StatelessWidget {
  const WhenEmptyList({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        text,
        style: Styles.textStyleBold12,
        textAlign: TextAlign.center,
      ),
    );
  }
}
