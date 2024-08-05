import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Divider(
        height: 1,
        color: AppColors.grey,
      ),
    );
  }
}
