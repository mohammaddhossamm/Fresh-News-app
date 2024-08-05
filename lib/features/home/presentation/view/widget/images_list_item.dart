import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/widgets/date_time.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/features/home/data/model/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/view/widget/stack_imge_list_item.dart';

class ImagesListItem extends StatelessWidget {
  const ImagesListItem(
      {super.key, required this.newsModel, required this.index});
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
        width: double.infinity,
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: StackImageListItem(
              newsModel: newsModel,
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}