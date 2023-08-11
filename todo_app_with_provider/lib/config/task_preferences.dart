import 'package:shared_preferences/shared_preferences.dart';

class TaskPreferences {
  static late SharedPreferences _preferences;

  static const _keyDate = 'date';
  static const _keyList = 'list';
  static const _keyDates = 'dates';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setDate(String date) async {
    await _preferences.setString(_keyDate, date);
  }

  static String? getDate() => _preferences.getString(_keyDate);

  static Future setList(String list) async {
    await _preferences.setString(_keyList, list);
  }

  static String? getList() => _preferences.getString(_keyList);

  static Future setDates(List<String> dates) async {
    await _preferences.setStringList(_keyDates, dates);
  }

  static List<String>? getDates() => _preferences.getStringList(_keyDates);
}
