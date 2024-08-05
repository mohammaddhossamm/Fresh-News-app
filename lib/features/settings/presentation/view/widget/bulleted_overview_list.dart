import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/settings/presentation/view/widget/bulleted_list_item.dart';
import 'package:news_app/generated/l10n.dart';

class BulletedOverviewList extends StatelessWidget {
  const BulletedOverviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).overview,
          style: Styles.textStyleBold14,
        ),
        const SizedBox(height: 10),
        BulletedListItem(
          text: S.of(context).overview1,
        ),
        BulletedListItem(
          text: S.of(context).overview2,
        ),
        BulletedListItem(
          text: S.of(context).overview3,
        ),
      ],
    );
  }
}
