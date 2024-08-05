import 'package:flutter/material.dart';
import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';

class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Row(
        children: [
          Text(
            S.of(context).discoverTitle,
            style: Styles.textStyleBold16,
          ),
          const Spacer(),
          const CircleAvatar(
            backgroundImage: AssetImage(AssetsData.logo),
            radius: 14,
          )
        ],
      ),
    );
  }
}
