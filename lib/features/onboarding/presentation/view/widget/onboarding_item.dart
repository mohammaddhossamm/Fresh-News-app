import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';
import '../../../data/models/onboarding_model.dart';

class OnBoardingViewItem extends StatelessWidget {
  const OnBoardingViewItem({super.key, required this.boardingModel});

  final OnBoardingModel boardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Image.asset(
         boardingModel.image,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        boardingModel.title, 
        style: Styles.textStyleBold16,
      ),
      const SizedBox(
        height: 10,
      ),
        boardingModel.description,
    ]);
  }
}
