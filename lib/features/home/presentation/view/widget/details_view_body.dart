import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/shared/widgets/custom_button.dart';
import 'package:news_app/core/shared/widgets/custom_image_error.dart';
import 'package:news_app/core/shared/widgets/sourse_datails.dart';
import 'package:news_app/core/shared/widgets/url_luncher.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
    required this.sourseText,
    required this.title,
    required this.date,
    required this.content,
    required this.sourseImagUrl,
    required this.newsImagUrl,
    required this.isFromSearch, 
    required this.url ,
  });
  final String sourseImagUrl;
  final String newsImagUrl;
  final String sourseText;
  final String title;
  final String date;
  final String content;
  final String? url;
  final bool isFromSearch;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              splashColor: AppColors.primary,
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.clear_rounded,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SourseDatails(
              imagUrl: sourseImagUrl,
              sourseText: sourseText,
              isFromSearch: isFromSearch,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),    
              ),
              child: AspectRatio(
                  aspectRatio: 2 / 1.5,
                  child: CachedNetworkImage(
                    imageUrl: newsImagUrl,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) =>
                        const CustomImageError(),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: Styles.textStyleExtraBold18,
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              date,
              style: Styles.textStyleNormal12,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              content,
              style: Styles.textStyleNormal14,
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 30,
            ),
             SizedBox(
              height: 40,
              width: double.infinity,
               child: CustomButton(
                textButton: S.of(context).viewLink,
                buttonColor: AppColors.primary,
                onPressed: (){
                  customUrlLuncher(
                    context,
                    appUrl: '',
                    browserUrl: url,
                    isDark: AppManagementCubit.get(context).isDark, 
                  );
                },
                           ),
             ),
          ],
        ),
      ),
    );
  }
}
