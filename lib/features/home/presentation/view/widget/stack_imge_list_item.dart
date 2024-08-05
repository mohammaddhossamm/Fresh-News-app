import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/shared/widgets/custom_image_error.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/home/data/model/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/view/widget/text_in_stack_image.dart';
import 'package:news_app/core/shared/widgets/date_time.dart';

class StackImageListItem extends StatelessWidget {
  const StackImageListItem(
      {super.key, required this.newsModel, required this.index});
  final NewsModel newsModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CachedNetworkImage(
          imageUrl: newsModel.results?[index].imageUrl ?? "",
          errorWidget: (context, url, error) => const CustomImageError(),
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              textInStackImage(
                text: newsModel.results?[index].sourceId ?? "",
              ),
              const SizedBox(
                height: 2,
              ),
              textInStackImage(
                text:dateTimeFormat(newsModel.results?[index].pubDate),
              ),
              const SizedBox(
                height: 10,
              ),
              textInStackImage(
                text: newsModel.results?[index].title ?? "",
                maxLines: 2,
                textStyle: Styles.textStyleBold16,
                boarderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
