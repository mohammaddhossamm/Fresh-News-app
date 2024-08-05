import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';

Widget textInStackImage({
  required String text,
  TextStyle textStyle = Styles.textStyleNormal14,
  int maxLines = 1,
  BorderRadiusGeometry? boarderRadius,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 5,
      vertical: 2,
    ),
    decoration: BoxDecoration(
      color: AppColors.primary.withOpacity(0.4),
      borderRadius: boarderRadius,
    ),
    child: Text(
      text,
      style: textStyle.copyWith(
        color: Colors.white,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
    ),
  );
}
