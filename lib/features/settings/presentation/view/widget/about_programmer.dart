import 'package:flutter/material.dart';
import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/settings/presentation/view/widget/custom_image_ratio.dart';
import 'package:news_app/features/settings/presentation/view/widget/social_media_icons.dart';
import 'package:news_app/generated/l10n.dart';

class AboutProgrammer extends StatelessWidget {
  const AboutProgrammer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          S.of(context).aboutProgrammer,
          style: Styles.textStyleBold14,
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomImageRatio(imagePath: AssetsData.mohamed),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      S.of(context).mohamed,
                      style: Styles.textStyleBold14,
                      overflow: TextOverflow.ellipsis,
                      maxLines:1,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      S.of(context).flutter,
                      style: Styles.textStyleNormal14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                    const Spacer(),
                    const SocialMediaIcons(), 
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
