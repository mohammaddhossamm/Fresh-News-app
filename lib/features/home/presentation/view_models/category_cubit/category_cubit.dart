import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/repo/home_repo.dart';
import 'package:news_app/features/home/presentation/view_models/category_cubit/category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.homeRepo) : super(CategoryInitial());

  final HomeRepo homeRepo;
  static CategoryCubit get(context) => BlocProvider.of(context);
  Future<void> getCategoryImageNews({
    required String category,
    required String language,
    required context,
  }) async {
    emit(CategoryLoadingState());
    var result = await homeRepo.getNewsByCategory(
        category: category, language: language, context: context);

    result.fold(
      (failure) {
        emit(CategoryErrorState(failure.errorMessage));
      },
      (news) {
        emit(CategorySuccessState(news));
      },
    );
  }
}
