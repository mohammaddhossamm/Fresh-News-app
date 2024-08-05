import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/layout/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:news_app/generated/l10n.dart';

class ExploreAndSeeMore extends StatelessWidget {
  const ExploreAndSeeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            S.of(context).titleSubCat,
            style: Styles.textStyleBold16,
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              LayoutCubit.get(context).changeBottomNavBarIndex(1);
            },
            style: TextButton.styleFrom(
              foregroundColor: AppColors.primary,
            ),
            child: Text(
              S.of(context).seemore,
              style: Styles.textStyleBold14.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
