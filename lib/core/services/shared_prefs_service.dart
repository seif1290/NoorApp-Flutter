import 'package:noor/core/error_handling/local_exception.dart';
import 'package:noor/core/utils/constants/data_constants/app_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  final SharedPreferences _prefs;
  SharedPrefsService(this._prefs);

  Future<void> startOnBoarding() async {
    try {
      await _prefs.setBool(AppKeys.isOnboardingFinished, false);
    } catch (e) {
      throw LocalException(message: e.toString());
    }
  }

  Future<void> finishOnBoarding() async {
    try {
      await _prefs.setBool(AppKeys.isOnboardingFinished, true);
    } catch (e) {
      throw LocalException(message: e.toString());
    }
  }

  Future<void> setLocale({required String languageCode}) async {
    try {
      await _prefs.setString(AppKeys.appLocale, languageCode);
    } catch (e) {
      throw LocalException(message: e.toString());
    }
  }

  String? get appLocale => _prefs.getString(AppKeys.appLocale);

  bool get isOnboardingFinished =>
      _prefs.getBool(AppKeys.isOnboardingFinished) ?? false;

  Future<void> clear() async {
    await _prefs.clear();
  }
}
