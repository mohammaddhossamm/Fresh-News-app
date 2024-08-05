import 'package:news_app/features/explore/data/model/explore_news_model/explore_news_model.dart';

abstract class ExploreState{}

class ExploreInitial extends ExploreState {}

class ExploreSuccessState extends ExploreState {
  final List<ExploreNewsModel> exploreNews;
 ExploreSuccessState(this.exploreNews);
}

class ExploreErrorState extends ExploreState {
  final String error;
  ExploreErrorState(this.error);
}

class ExploreLoadingState extends ExploreState {}
