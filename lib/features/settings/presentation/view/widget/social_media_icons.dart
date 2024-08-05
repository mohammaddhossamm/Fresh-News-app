import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/shared/widgets/url_luncher.dart';
import 'package:news_app/core/utils/assets.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    var socialCubit=AppManagementCubit.get(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
         socialIconItem(
          onTap:(){
             customUrlLuncher(
              context,
              appUrl: "linkedin://in/mohammaddhossamm",
              browserUrl:"https://www.linkedin.com/in/mohammaddhossamm/" ,
              isDark: socialCubit.isDark,
              );
          },
          imagePath:AssetsData.linkedIn,
         ),
         const SizedBox(width: 10,),
         socialIconItem(
          onTap:(){
             customUrlLuncher(
              context,
              appUrl:"fb://facewebmodal/f?href=https://www.facebook.com/mohammaddhossamm" ,
              browserUrl: "https://www.facebook.com/mohammaddhossamm" ,
               isDark: socialCubit.isDark,
              );
          },
          imagePath:AssetsData.faceBook,
         ),
         const SizedBox(width: 10,),
         socialIconItem(
          onTap:(){
            customUrlLuncher(
              context,
              appUrl: "github://user?username=mohammaddhossamm",
              browserUrl:"https://github.com/mohammaddhossamm" ,
               isDark: socialCubit.isDark,
              );
          },
          imagePath:AssetsData.github,
         ),
        ],
    );
  }
}

Widget socialIconItem({
  required String imagePath,
  required Function()?  onTap
}){

  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
                radius: 12,
                backgroundColor:Colors.white,
                child: SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
  );
}

