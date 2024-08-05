import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/home/presentation/view/widget/category_list.dart';
import 'package:news_app/features/home/presentation/view/widget/custom_appbar.dart';
import 'package:news_app/features/home/presentation/view/widget/explore_seemore.dart';
import 'package:news_app/features/home/presentation/view/widget/images_list.dart';
import 'package:news_app/features/home/presentation/view/widget/lastes_news_listview.dart';
import 'package:news_app/features/home/presentation/view/widget/sub_category_listwiew.dart';
import 'package:news_app/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBarr(),
          const CategoryList(),
          const ImagesList(),
          const ExploreAndSeeMore(),
          const SubCategoryListwiew(),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              S.of(context).lastesNewsTitle,
              style: Styles.textStyleBold16,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const LastesNewsListview(),
        ],
      ),
    ));
  }
}
