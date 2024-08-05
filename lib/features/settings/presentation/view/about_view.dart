import 'package:flutter/material.dart';
import 'package:news_app/features/settings/presentation/view/widget/about_view_body.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AboutViewBody(),
    );
  }
}