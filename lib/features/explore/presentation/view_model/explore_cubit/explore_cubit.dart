import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/explore/data/repo/explore_repo.dart';
import 'package:news_app/features/explore/presentation/view_model/explore_cubit/explore_state.dart';

class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit(this.exploreRepo) : super(ExploreInitial());
bool isSearchMode = false; 
var searchController = TextEditingController();

final ExploreRepo exploreRepo;
static ExploreCubit get(context) => BlocProvider.of(context);

  Future<void> getExploreNews({
    required String exploreTitile,
    required String language,
    required context,
  }) async {
    emit(ExploreLoadingState());
    var result = await exploreRepo.exploreNews(
      exploreTitile: exploreTitile,
      language: language,
      context: context,
    );
    result.fold(
      (failure) { 
        emit(ExploreErrorState(failure.errorMessage));
      },
      (data) {
        emit(ExploreSuccessState(data));
      },
    );
  }
}