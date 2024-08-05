import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/view_models/category_index_cubit/category_index_states.dart';

class CategoryIndexCubit extends Cubit<CategoryIndexStates>{
   CategoryIndexCubit() : super(CategoryIndexInItState());
  static CategoryIndexCubit get(context) => BlocProvider.of(context);
  int categoryIndex = 0;
  int subCategoryIndex = 0;

  
  void selectFromCategory(int index) {
    categoryIndex = index;
    subCategoryIndex = 0;
    emit(SelectFromCategoryState());
  }

  void selectFromSubCategory(int index) {
    subCategoryIndex = index;
    emit(SelectFromSubCategoryState());
  }
}