import 'package:noor/core/utils/app_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  final SharedPreferences _prefs;
  SharedPrefsService(this._prefs) {
    if (reciterIdentifier == null) {
      _prefs.setString(AppKeys.reciterIdentifier, 'ar.alafasy');
    }
  }

  Future<bool> startOnBoarding() async =>
      await _prefs.setBool(AppKeys.isOnboardingFinished, false);

  Future<bool> finishOnBoarding() async =>
      await _prefs.setBool(AppKeys.isOnboardingFinished, true);

  Future<bool> setLanguageCode({required String languageCode}) async =>
      await _prefs.setString(AppKeys.appLanguageCode, languageCode);

  String? get appLanguageCode => _prefs.getString(AppKeys.appLanguageCode);

  bool get isOnboardingFinished =>
      _prefs.getBool(AppKeys.isOnboardingFinished) ?? false;

  Future<bool> setReciterIdentifier(String identifier) async =>
      await _prefs.setString(AppKeys.reciterIdentifier, identifier);

  String? get reciterIdentifier => _prefs.getString(AppKeys.reciterIdentifier);
}
