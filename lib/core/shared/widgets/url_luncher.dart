import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

void customUrlLuncher(context,
    {String? appUrl, required bool isDark, String? browserUrl}) async {
  if (appUrl != null && browserUrl != null) {
    Uri appUri = Uri.parse(appUrl);
    Uri browserUri = Uri.parse(browserUrl);

    if (await canLaunchUrl(appUri)) {
      customSussessSnackBar(
        context,
        text: S.of(context).snakBarSuccess,
        isDark: isDark,
      );
      await launchUrl(appUri);
    } else if (!await canLaunchUrl(appUri)) {
      if (await canLaunchUrl(browserUri)) {
        customSussessSnackBar(
          context,
          text: S.of(context).snakBarSuccess,
          isDark: isDark,
        );
        await launchUrl(browserUri);
      } else {
        customErrorSnackBar(
          context,
          text: S.of(context).snakBarError,
          isDark: isDark,
        );
      }
    } else {
      customErrorSnackBar(
        context,
        text: S.of(context).snakBarError,
        isDark: isDark,
      );
    }
  }
}

void customErrorSnackBar(
  BuildContext context, {
  required String text,
  required bool isDark,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: const StadiumBorder(),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(25),
      duration: const Duration(seconds: 1),
      elevation: 10,
      backgroundColor: isDark ? AppColors.navBarColor : Colors.white,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Icon(
              Icons.error_outline,
              color: Colors.red,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
        ],
      ),
    ),
  );
}

void customSussessSnackBar(
  context, {
  required String text,
  required bool isDark,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: const StadiumBorder(),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(25),
      duration: const Duration(seconds: 1),
      elevation: 10,
      backgroundColor: isDark ? AppColors.navBarColor : Colors.white,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Icon(
              Icons.check_circle_outline,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    ),
  );
}
