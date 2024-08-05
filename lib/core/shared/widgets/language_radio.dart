import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';

class CustomLanguageRadio extends StatelessWidget {
  const CustomLanguageRadio({
    super.key,
    this.onChanged,
    required this.groupValue,
  });
  final void Function(String?)? onChanged;
  final String groupValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).language,
          style: Styles.textStyleNormal14,
        ),
        RadioListTile(
          title: const Text('English', style: TextStyle(fontSize: 12)),
          value: 'en',
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: AppColors.primary,
        ),
        RadioListTile(
          title: const Text('العربية', style: TextStyle(fontSize: 12)),
          value: 'ar',
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: AppColors.primary,
        ),
      ],
    );
  }
}
