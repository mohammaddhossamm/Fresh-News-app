import 'package:flutter/material.dart';
import 'package:news_app/features/settings/presentation/view/widget/about_programmer.dart';
import 'package:news_app/features/settings/presentation/view/widget/bulleted_features_list.dart';
import 'package:news_app/features/settings/presentation/view/widget/bulleted_overview_list.dart';
import 'package:news_app/features/settings/presentation/view/widget/custom_app_bar.dart';
import 'package:news_app/features/settings/presentation/view/widget/custom_divider.dart';

class AboutViewBody extends StatelessWidget {
  const AboutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(height: 20),
              BulletedOverviewList(),
               CustomDivider(),
              BulletedFeaturesList(),
               CustomDivider(),
              AboutProgrammer(),
            ],
          ),
        ),
      ),
    );
  }
}
