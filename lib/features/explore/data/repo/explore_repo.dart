import 'package:dartz/dartz.dart';
import 'package:news_app/core/Errors/failure.dart';
import 'package:news_app/features/explore/data/model/explore_news_model/explore_news_model.dart';

abstract class ExploreRepo{
  Future<Either<Failure,List<ExploreNewsModel>>> exploreNews({
    required String exploreTitile,
    required String language,
    required context,
  });
}