import 'package:noor/core/error_handling/local_exception.dart';
import 'package:noor/core/utils/app_keys.dart';
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

  Future<String> setLanguageCode({required String languageCode}) async {
    try {
      await _prefs.setString(AppKeys.appLanguageCode, languageCode);
      return languageCode;
    } catch (e) {
      throw LocalException(message: e.toString());
    }
  }

  String? get appLanguageCode => _prefs.getString(AppKeys.appLanguageCode);

  bool get isOnboardingFinished =>
      _prefs.getBool(AppKeys.isOnboardingFinished) ?? false;

  Future<void> clear() async {
    await _prefs.clear();
  }
}
