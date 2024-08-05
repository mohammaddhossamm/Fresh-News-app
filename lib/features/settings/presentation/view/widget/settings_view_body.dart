import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_states.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/widgets/language_radio.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/home/presentation/view/widget/sub_category_list_fun.dart';
import 'package:news_app/features/home/presentation/view_models/category_cubit/category_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/category_index_cubit/category_index_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/sub_category_cubit/sub_category_cubit.dart';
import 'package:news_app/features/settings/presentation/view/widget/custom_divider.dart';
import 'package:news_app/features/settings/presentation/view/widget/custom_switch.dart';
import 'package:news_app/features/settings/presentation/view/widget/logo_section.dart';
import 'package:news_app/generated/l10n.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppManagementCubit, AppManagementStates>(
      builder: (context, state) {
        var appCubit = AppManagementCubit.get(context);
        var categoryCubit = CategoryCubit.get(context);
        var subCategoryCubit = SubCategoryCubit.get(context);
        var indexCubit = CategoryIndexCubit.get(context);
        return SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LogoSection(),
                  const SizedBox(height: 40),
                  CustomSwitch(
                    current: appCubit.isDark,
                    onChanged: (value) {
                      appCubit.changeMode(value);
                    },
                  ),
                  const CustomDivider(),
                  CustomLanguageRadio(
                    groupValue: appCubit.language,
                    onChanged: (value) {
                      appCubit.changeLanguage(value!);
                      categoryCubit
                          .getCategoryImageNews(
                        category: categoryList[indexCubit.categoryIndex],
                        language: appCubit.language,
                        context: context,
                      )
                          .then(
                        (value) {
                          subCategoryCubit.getSubCategoryNews(
                            category: categoryList[indexCubit.categoryIndex],
                            subCategory: indexCubit.subCategoryIndex == 0
                                ? ""
                                : "qInMeta=${subCategoryText(context)[indexCubit.categoryIndex][indexCubit.subCategoryIndex]}",
                            language: appCubit.language,
                            context: context,
                          );
                        },
                      );
                    },
                  ),
                  const CustomDivider(),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.aboutView);
                    },
                    child: Text(S.of(context).aboutUs,
                        style: Styles.textStyleNormal14),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
