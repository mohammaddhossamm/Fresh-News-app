import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/widgets/custom_image_error.dart';
import 'package:news_app/core/shared/widgets/date_time.dart';
import 'package:news_app/core/shared/widgets/sourse_datails.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/home/data/model/news_model/news_model.dart';

class LastesNewsListviewItem extends StatelessWidget {
  const LastesNewsListviewItem({
    super.key,
    required this.newsModel,
    required this.index,
  });
  final NewsModel newsModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.detailsView,
          extra: {
            kSourseImagUrl: newsModel.results![index].sourceIcon ?? "",
            kTitle: newsModel.results![index].title ?? "",
            kDate: dateTimeFormat(newsModel.results![index].pubDate),
            kContent: newsModel.results![index].description ?? "",
            kNewsImagUrl: newsModel.results![index].imageUrl ?? "",
            kSourseText: newsModel.results![index].sourceId ?? "",
            kUrl: newsModel.results![index].link ?? "",
            kIsFromSearch: false,
          },
        );
      },
      child: SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: CachedNetworkImage(
                    imageUrl: newsModel.results?[index].imageUrl ?? "",
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) =>
                        const CustomImageError(),
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    newsModel.results?[index].title ?? "",
                    style: Styles.textStyleBold14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    newsModel.results?[index].description ?? "",
                    style: Styles.textStyleNormal14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  SourseDatails(
                    imagUrl: newsModel.results?[index].sourceIcon ?? "",
                    sourseText: newsModel.results?[index].sourceId ?? "",
                    isFromSearch: false,
                  ),
                  Text(
                    dateTimeFormat(newsModel.results![index].pubDate),
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
