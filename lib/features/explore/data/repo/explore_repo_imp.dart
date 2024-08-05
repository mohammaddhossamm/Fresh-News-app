import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/core/Errors/failure.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/features/explore/data/api/explore_api_request.dart';
import 'package:news_app/features/explore/data/model/explore_news_model/explore_news_model.dart';
import 'package:news_app/features/explore/data/repo/explore_repo.dart';

class ExploreRepoImp implements ExploreRepo {
  final ExploreApiRequest exploreApiRequest;
  ExploreRepoImp(this.exploreApiRequest);
  @override
  Future<Either<Failure, List<ExploreNewsModel>>> exploreNews(
      {required String exploreTitile,
      required String language,
      required context}) async {
    try {
      var data = await exploreApiRequest.exploreNews(
          endPoint:
              'everything?apiKey=$exploreApiKey&language=$language&q=$exploreTitile&pageSize=30');
      List<ExploreNewsModel> exploreList = [];
      exploreList.add(ExploreNewsModel.fromJson(data));
      return Right(exploreList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.dioException(
          dioException: e,
          context: context,
          isSearchMode: true,
        ));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
