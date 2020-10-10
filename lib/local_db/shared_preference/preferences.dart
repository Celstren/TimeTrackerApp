import 'dart:convert';

import 'package:TimeTracker/local_db/shared_preference/preferences_keys.dart';
import 'package:TimeTracker/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static Preferences _instance;
  static SharedPreferences _prefs;

  Preferences._();

  factory Preferences() => _getInstance();

  static Preferences _getInstance() {
    if (_instance == null) {
      _instance = Preferences._();
    }
    return _instance;
  }

  static Future<void> initPrefs() async => _prefs = await SharedPreferences.getInstance();

  static Future<bool> clear() async => await _prefs.clear();

  /// Manage User data on shared preferences
  
  static UserModel get user => _prefs.getString(PreferencesKeys.USER) != null
  && _prefs.getString(PreferencesKeys.USER).isNotEmpty ? UserModel.fromJson(jsonDecode(_prefs.getString(PreferencesKeys.USER))) : null;

  static set user(UserModel userModel) => _prefs.setString(PreferencesKeys.USER, jsonEncode(userModel.toJson()));

}