import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/widgets/date_time.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/explore/data/model/explore_news_model/explore_news_model.dart';

class ResultListviewItem extends StatelessWidget {
  const ResultListviewItem({super.key, required this.index,required this.model,});
  final int index;
  final ExploreNewsModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         GoRouter.of(context).push(
          AppRouter.detailsView,
          extra: {
            kSourseImagUrl:  model.articles?[index].source?.id??"",
            kTitle: model.articles?[index].title??"",
            kDate:  dateTimeFormat(model.articles![index].publishedAt),
            kContent: model.articles?[index].description ?? "",
            kNewsImagUrl: model.articles?[index].urlToImage ?? "",
            kSourseText: model.articles?[index].source?.name ?? "",
            kUrl: model.articles?[index].url?? "",
            kIsFromSearch: true,
          }, 
        );
      },
      child: SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 60,
              child: Text(
                (index + 1) < 10 ? '0${index + 1}' : '${index + 1}',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                ),
              ),
            ),
             Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    model.articles![index].title??"",
                    style: Styles.textStyleBold14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                 const SizedBox(
                    height: 2,
                  ),
                  Text(
                    model.articles![index].description??"",
                    style: Styles.textStyleNormal14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                
                      Text(
                        model.articles![index].source?.name??"",
                        style: Styles.textStyleBold12,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                  Text(
                    dateTimeFormat(model.articles![index].publishedAt),
                    style: Styles.textStyleNormal12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
