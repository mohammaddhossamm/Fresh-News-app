import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/locator.dart';
import 'package:news_app/features/explore/data/repo/explore_repo_imp.dart';
import 'package:news_app/features/explore/presentation/view/widget/explore_view_body.dart';
import 'package:news_app/features/explore/presentation/view_model/explore_cubit/explore_cubit.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExploreCubit(
        getIt.get<ExploreRepoImp>(),
      ),
  child: const Scaffold(
      body: ExploreViewBody(),
    ),
    );
  }
}
