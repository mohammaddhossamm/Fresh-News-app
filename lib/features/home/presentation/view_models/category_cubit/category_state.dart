import 'package:news_app/features/home/data/model/news_model/news_model.dart';

abstract class  CategoryState {}

class CategoryInitial extends CategoryState {}

class CategorySuccessState extends CategoryState {
  final List<NewsModel> news;
  CategorySuccessState(this.news);
}

class CategoryErrorState extends CategoryState {
  final String error;
  CategoryErrorState(this.error);
}

class CategoryLoadingState extends CategoryState {}
