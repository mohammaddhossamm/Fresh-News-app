import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/repo/home_repo.dart';
import 'package:news_app/features/home/presentation/view_models/sub_category_cubit/sub_category_state.dart';

class SubCategoryCubit extends Cubit<SubCategoryState> {
  SubCategoryCubit(this.homeRepo) : super(SubCategoryInitial());

  final HomeRepo homeRepo;
  static SubCategoryCubit get(context) => BlocProvider.of(context);

  Future<void> getSubCategoryNews({
    required String category,
    required String subCategory,
    required String language,
    required context, 
  }) async {
    emit(SubCategoryLoadingState());
    var result = await homeRepo.getNewsBySubCategoryAndCategory(
      category: category,
      language: language,
      subCategory: subCategory,
      context: context,
    );

    result.fold(
      (failure) {
        emit(SubCategoryErrorState(failure.errorMessage));
      },
      (news) {
        emit(SubCategorySuccessState(news));
      },
    );
  }
}
