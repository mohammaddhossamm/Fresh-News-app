import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/shared/widgets/custom_loading_indecator.dart';
import 'package:news_app/core/shared/widgets/custom_server_error_widget.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/features/explore/presentation/view/widget/result_listview_item.dart';
import 'package:news_app/features/explore/presentation/view_model/explore_cubit/explore_cubit.dart';
import 'package:news_app/features/explore/presentation/view_model/explore_cubit/explore_state.dart';
import 'package:news_app/features/home/presentation/view/widget/when_empty_list.dart';
import 'package:news_app/generated/l10n.dart';

class ResultListview extends StatelessWidget {
  const ResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    var resultCubit=ExploreCubit.get(context);
    return BlocBuilder<ExploreCubit,ExploreState>(
      builder: (context, state) {
       if(state is ExploreSuccessState){
        if(state.exploreNews[0].articles!.isEmpty){
          return WhenEmptyList(text: S.of(context).searchListEmpty);
        }else{
          return ListView.separated(
      itemBuilder: (context, index) {
          
        return ResultListviewItem(
          index: index,
          model: state.exploreNews[0],
        );
      },
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsetsDirectional.only(start: 60, top: 5, bottom: 5),
        child: Divider(
          color: AppColors.grey,
          height: 1,
        ),
      ),
      itemCount: state.exploreNews[0].articles?.length??0,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
          ); 
        }
       }else if(state is ExploreErrorState){
        return CustomServerErrorWidget(errorMessage: state.error);
       }else{
        if(resultCubit.isSearchMode){
          return const CustomLoadingIndecator();
        }else{
          return const SizedBox();
        }
        
       }
      },
    );
  }
}
