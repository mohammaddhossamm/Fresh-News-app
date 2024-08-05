import 'package:flutter/material.dart';
import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            S.of(context).settingsTitle,
            style: Styles.textStyleBold16,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 200,
          width: 200,
          child: Image.asset(
            AssetsData.logo,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          S.of(context).slogan,
          style: Styles.textStyleBold14,
        ),
      ],
    );
  }
}
