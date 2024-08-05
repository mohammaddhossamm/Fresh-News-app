import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/features/explore/data/api/explore_api_request.dart';
import 'package:news_app/features/explore/data/repo/explore_repo_imp.dart';
import 'package:news_app/features/home/data/api/api_request.dart';
import 'package:news_app/features/home/data/repo/home_repo_imp.dart';

final getIt = GetIt.instance;
void setUpLocator() {
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      ApiRequest(
        Dio(),
      ),
    ),
  );

  getIt.registerSingleton<ExploreRepoImp>(
    ExploreRepoImp(
      ExploreApiRequest(
        Dio(),
      )
    ),
  );
}
