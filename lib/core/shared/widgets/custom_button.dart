import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.textButton,
      required this.buttonColor,
      this.onPressed});

  final String textButton;
  final Color buttonColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        shape: const StadiumBorder(),
        foregroundColor: AppColors.primary,
      ),
      onPressed: onPressed,
      child: Text(
        textButton,
        style: Styles.textStyleBold14.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
