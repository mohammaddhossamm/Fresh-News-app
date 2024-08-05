import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/shared/widgets/custom_loading_indecator.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/features/home/data/model/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/view/widget/images_list_item.dart';
import 'package:news_app/features/home/presentation/view_models/category_cubit/category_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/category_cubit/category_state.dart';

class ImagesList extends StatelessWidget {
  const ImagesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategorySuccessState) {
          return CarouselSlider(
            items: returnImagesList(newsModel: state.news[0]),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              reverse: false,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: (index, reason) {},
              animateToClosest: true,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              scrollPhysics: const BouncingScrollPhysics(),
              enlargeFactor: 0.25,
              viewportFraction: 0.85,
            ),
          );
        } else if (state is CategoryErrorState) {
          return const Center(
            child: Icon(
              Icons.error_outline_rounded,
              color: AppColors.primary,
              size:35,
            ),
          );
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}

List<Widget>? returnImagesList({required NewsModel newsModel}) {
  List<Widget>? list = [];
  for (int i = 0; i < newsModel.results!.length; i++) {
    list.add(
      ImagesListItem(
        index: i,
        newsModel: newsModel,
      ),
    );
  }
  return list;
}
