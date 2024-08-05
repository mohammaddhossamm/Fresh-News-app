import 'package:flutter/material.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/shared/widgets/language_radio.dart';
import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';
import '../../../data/models/onboarding_model.dart';

List<OnBoardingModel> onBoardingList(
    BuildContext context,) {
      var appCubit=AppManagementCubit.get(context);
  return [
    OnBoardingModel(
      image: AssetsData.languageOnBording,
      title: S.of(context).onBordingtitle1,
      description: CustomLanguageRadio(
        groupValue: appCubit.language,
        onChanged: (value) {
          appCubit.changeLanguage(value!);
        },
      ),
    ),
    OnBoardingModel(
      image: AssetsData.onBording1,
      title: S.of(context).onBordingtitle2,
      description: Text(
        S.of(context).onBordingDescription2,
        style: Styles.textStyleNormal16,
        textAlign: TextAlign.center,
      ),
    ),
    OnBoardingModel(
      image: AssetsData.onBording2,
      title: S.of(context).onBordingtitle3,
      description: Text(
        S.of(context).onBordingDescription3,
        style: Styles.textStyleNormal16,
        textAlign: TextAlign.center,
      ),
    )
  ];
}
