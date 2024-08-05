import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/explore/presentation/view/widget/result_listview.dart';
import 'package:news_app/features/explore/presentation/view/widget/search_text_form.dart';
import 'package:news_app/generated/l10n.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).exploreViewTitle,
              style: Styles.textStyleBold16,
            ),
            const SizedBox(
              height: 20,
            ),
             const SearchTextFormField(),
            const SizedBox(
              height: 20,
            ),
            Text(
              S.of(context).results,
              style: Styles.textStyleBold16,
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: ResultListview()),
          ],
        ),
      ),
    );
  }
}

