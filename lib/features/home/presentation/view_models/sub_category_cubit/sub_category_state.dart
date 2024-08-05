import 'package:news_app/features/home/data/model/news_model/news_model.dart';

abstract class SubCategoryState {}

class SubCategoryInitial extends SubCategoryState {}

class SubCategorySuccessState extends SubCategoryState {
  final List<NewsModel> news;
  SubCategorySuccessState(this.news);
}

class SubCategoryErrorState extends SubCategoryState {
  final String error;
  SubCategoryErrorState(this.error);
}

class SubCategoryLoadingState extends SubCategoryState {}
