import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/core/utils/colors.dart';

ThemeData customLightMode(context) {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    primarySwatch: Colors.green,
    textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
        )),
    scaffoldBackgroundColor: Colors.white,
  );
}
