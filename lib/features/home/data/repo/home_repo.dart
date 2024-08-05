import 'package:dartz/dartz.dart';
import 'package:news_app/core/Errors/failure.dart';
import 'package:news_app/features/home/data/model/news_model/news_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<NewsModel>>> getNewsByCategory({
    required String category,
    required String language,
    required context,
  });
  Future<Either<Failure, List<NewsModel>>> getNewsBySubCategoryAndCategory({
    required String category,
    required String subCategory,
    required String language,
    required context,
  });
}
