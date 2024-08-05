import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_states.dart';
import 'package:news_app/core/shared/settings_services.dart';

class AppManagementCubit extends Cubit<AppManagementStates> {
  AppManagementCubit() : super(InitialAppManagementState());
  static AppManagementCubit get(context) => BlocProvider.of(context);
  bool isDark = SettingsService.isDark(key: isDarkKeyPrefs);
  String language = SettingsService.isArabic(key: isArabicKeyPrefs);

  void changeMode(bool mode) {
    isDark = mode;
    SettingsService.saveSettings(key: isDarkKeyPrefs, value: mode).then(
      (value) => emit(ChangeModeState()),
    );
  }

  void changeLanguage(String lang) {
    language = lang;
    SettingsService.saveSettings(key: isArabicKeyPrefs, value: lang).then(
      (value) => emit(ChangeAppLanguageState()),
    );
  }
}
