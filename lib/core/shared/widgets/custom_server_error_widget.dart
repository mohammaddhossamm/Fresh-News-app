import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';

class CustomServerErrorWidget extends StatelessWidget {
  const CustomServerErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Align(
        alignment:  Alignment.center,
        child: Text(
          errorMessage,
          style: Styles.textStyleBold12,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
