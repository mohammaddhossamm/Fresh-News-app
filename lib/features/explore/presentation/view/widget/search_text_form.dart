import 'package:flutter/material.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/explore/presentation/view_model/explore_cubit/explore_cubit.dart';
import 'package:news_app/generated/l10n.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var tFFcubit = ExploreCubit.get(context);
    var tFFManger=AppManagementCubit.get(context);
    return Form(
      key:textFFKey ,
      child: TextFormField(
        controller: tFFcubit.searchController,
        cursorColor: AppColors.primary,
       onFieldSubmitted: (value) async{
          if(textFFKey.currentState!.validate()){
            tFFcubit.isSearchMode = true;
            await tFFcubit.getExploreNews(
            exploreTitile: tFFcubit.searchController.text,
            language: tFFManger.language,
            context: context,
          );
          }
       },
        validator: (value) {
          if(value!.isEmpty){
            return S.of(context).textFormError;
          }else{
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: S.of(context).searchTFF,
          hintStyle: Styles.textStyleBold12,
          hoverColor: AppColors.primary,
          enabledBorder: borderTFF(),
          focusedBorder: borderTFF(borderColor: AppColors.primary),
          errorBorder:borderTFF(borderColor: Colors.redAccent), 
          focusedErrorBorder: borderTFF(borderColor: Colors.redAccent), 
          suffixIcon: CircleAvatar(
            backgroundColor: AppColors.primary,
            child: IconButton(
              onPressed: () async {
                if(textFFKey.currentState!.validate()){
            tFFcubit.isSearchMode = true;
            await tFFcubit.getExploreNews(
            exploreTitile: tFFcubit.searchController.text,
            language: tFFManger.language,
            context: context,
          );
          }
              },
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder borderTFF({Color borderColor = AppColors.grey}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: borderColor,
    ),
  );
}
