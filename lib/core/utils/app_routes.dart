import 'package:go_router/go_router.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/features/home/presentation/view/details_view.dart';
import 'package:news_app/features/layout/presentation/view/home_layout.dart';
import 'package:news_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:news_app/features/settings/presentation/view/about_view.dart';
import 'package:news_app/features/settings/presentation/view/settings_view.dart';
import 'package:news_app/features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const String onBoardingView = '/onboarding';
  static const String homeLayout = '/layout';
  static const String settingsView = '/settings';
  static const String detailsView = '/details';
  static const String aboutView = '/aboutUs';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: homeLayout,
        builder: (context, state) => const HomeLayout(),
      ),
      GoRoute(
        path: settingsView,
        builder: (context, state) => const SettingsView(),
      ),
       GoRoute(
        path: aboutView,
        builder: (context, state) => const AboutView(), 
      ),
      GoRoute(
        path: detailsView,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          final String sourseImagUrl = extra?[kSourseImagUrl] as String;
          final String newsImagUrl = extra?[kNewsImagUrl] as String;
          final String sourseText = extra?[kSourseText] as String;
          final String title = extra?[kTitle] as String;
          final String date = extra?[kDate] as String;
          final String content = extra?[kContent] as String;
          final String url = extra?[kUrl] as String;
          final bool isFromSearch = extra?[kIsFromSearch] as bool;
          return DetailsView(
            sourseImagUrl: sourseImagUrl,
            newsImagUrl: newsImagUrl,
            sourseText: sourseText,
            title: title,
            date: date,
            content: content,
            isFromSearch: isFromSearch,
            url: url,
          );
        },
      ),
    ],
  );
}

