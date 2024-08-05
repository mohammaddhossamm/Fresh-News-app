import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubCategoryListViewItem extends StatelessWidget {
  const SubCategoryListViewItem(
      {super.key,
      required this.imagePath,
      required this.text,
      this.onPressed,
      this.boarderColor,
      required this.backgroundColor});
  final String imagePath;
  final String text;
  final void Function()? onPressed;
  final Color? boarderColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: boarderColor,
              shape: BoxShape.circle,
            ),
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                shape: const CircleBorder(),
                foregroundColor: AppColors.primary,
                padding: const EdgeInsets.all(4),
              ),
              child: CircleAvatar(
                backgroundColor: backgroundColor,
                radius: 30,
                child: SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            text,
            style: Styles.textStyleBold12,
          ),
        ],
      ),
    );
  }
}
