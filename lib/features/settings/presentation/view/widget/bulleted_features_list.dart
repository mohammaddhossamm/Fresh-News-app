import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/settings/presentation/view/widget/bulleted_list_item.dart';
import 'package:news_app/generated/l10n.dart';

class BulletedFeaturesList extends StatelessWidget {
  const BulletedFeaturesList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          S.of(context).features,
          style: Styles.textStyleBold14,
        ),
         const SizedBox(height: 10),
         const BulletedListItem(
          text: "MVVM Architecture Pattern",
        ),
       const BulletedListItem(
          text: "Bloc State Management",
        ),
        const BulletedListItem(
          text: "Localizations  (English - العربية)",
        ),
        const BulletedListItem(
          text: "Shared Preferences",
        ),
        const BulletedListItem(
          text: "Dark & Light Mode",
        ),
        const BulletedListItem(
          text: "Git It",
        ),
      ],
    );
  }
}