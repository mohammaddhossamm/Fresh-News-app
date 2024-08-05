import 'package:flutter/material.dart';
import 'package:news_app/generated/l10n.dart';

List<String> categoryText(BuildContext context) {
  return [
    S.of(context).topCat,
    S.of(context).sportCat,
    S.of(context).businessCat,
    S.of(context).educationCat,
    S.of(context).worldCat,
    S.of(context).techCat,
    S.of(context).healthCat,
  ];
}

List<List<String>> subCategoryText(BuildContext context) {
  return [
    //Top
    [
      S.of(context).topSubCat,
    ],

    //Sports

    [
      S.of(context).sportsSubCat,
      S.of(context).footballSubCat,
      S.of(context).basketSubCat,
      S.of(context).tennisSubCat,
      S.of(context).americanfootballSubCat,
      S.of(context).karateSubCat,
      S.of(context).racingSubCat,
    ],

    //Business
    [
      S.of(context).businessSubCat,
      S.of(context).econoSubCat,
      S.of(context).stockSubCat,
      S.of(context).financeSubCat,
      S.of(context).marketingSubCat,
    ],

    //Education
    [
      S.of(context).eduSubCat,
    ],

    //World
    [
      S.of(context).worldSubCat,
      S.of(context).palestineSubCat,
    ],

    //technology
    [
      S.of(context).tecSubCat,
    ],

    //Health
    [
      S.of(context).healthSubCat,
    ],
  ];
}
