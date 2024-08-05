import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/core/Errors/failure.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/features/home/data/api/api_request.dart';
import 'package:news_app/features/home/data/model/news_model/news_model.dart';
import 'package:news_app/features/home/data/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiRequest apiRequest;
  HomeRepoImp(this.apiRequest);
  @override
  Future<Either<Failure, List<NewsModel>>> getNewsByCategory({
    required String category,
    required String language,
    required context,
  }) async {
    try {
      var data = await apiRequest.getNews(
          endPoint:
              'latest?apikey=$apiKey&category=$category&language=$language');
      List<NewsModel> newsList = [];
      newsList.add(NewsModel.fromJson(data));
      return Right(newsList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.dioException(
          dioException: e,
          context: context,
        ));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<NewsModel>>> getNewsBySubCategoryAndCategory({
    required String category,
    required String subCategory,
    required String language,
    required context,
  }) async {
    try {
      var data = await apiRequest.getNews(
          endPoint:
              'latest?apikey=$apiKey&category=$category&language=$language&$subCategory');
      List<NewsModel> newsList = [];
      newsList.add(NewsModel.fromJson(data));
      return Right(newsList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.dioException(
          dioException: e,
          context: context,
        ));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
