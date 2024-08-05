import 'package:flutter/material.dart';

class CustomImageRatio extends StatelessWidget {
  const CustomImageRatio({super.key, required this.imagePath});
final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child:Image.asset(
                     imagePath,
                     fit: BoxFit.cover,
                    ), 
                    ),
              );
  }
}