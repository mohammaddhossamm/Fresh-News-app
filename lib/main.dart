import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/shared/bloc_observer.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_states.dart';
import 'package:news_app/core/shared/settings_services.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/dark_mode.dart';
import 'package:news_app/core/utils/light_mode.dart';
import 'core/shared/app_management_cubit/app_management_cubit.dart';
import 'core/utils/app_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app/core/utils/locator.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await SettingsService.init();
  setUpLocator();
  Bloc.observer = MyBlocObserver();  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (context) => AppManagementCubit(),
     
      child: BlocBuilder<AppManagementCubit, AppManagementStates>(
        builder: (context, state) {
           var mainCubit = AppManagementCubit.get(context);
          SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
          statusBarColor: mainCubit.isDark? AppColors.navBarColor:Colors.white,
          statusBarIconBrightness:mainCubit.isDark?  Brightness.light:Brightness.dark,
          systemNavigationBarColor: mainCubit.isDark? AppColors.navBarColor:Colors.white,
          systemNavigationBarIconBrightness: mainCubit.isDark?  Brightness.light:Brightness.dark,
        ),
      );
         
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            locale: Locale(
              mainCubit.language,
            ),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: 'Hello World',
            theme: customLightMode(context),
            darkTheme: customDarkMode(context),
            themeMode: mainCubit.isDark ? ThemeMode.dark : ThemeMode.light,
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  }
}
