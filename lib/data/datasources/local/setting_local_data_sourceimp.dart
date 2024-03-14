import 'package:foody/core/error/exceptions.dart';
import 'package:foody/data/datasources/local/setting_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingLocalDataSourceimp implements SettingLocalDataSource {
  static String theme = 'theme';
  static String onBoardingSkipped = 'onBoardingSkipped';
  static String local = 'local';
  @override
  Future<String?> getLocale() async {
    try {
      final pref = await SharedPreferences.getInstance();
      return pref.getString(local);
    } catch (_) {
      throw NoDataException();
    }
  }

  @override
  Future<String?> getTheme() async {
    try {
      final pref = await SharedPreferences.getInstance();
      return pref.getString(theme);
    } catch (_) {
      throw NoDataException();
    }
  }

  @override
  Future<String?> changedLocale(String newlocal) async {
    try {
      final pref = await SharedPreferences.getInstance();
      await pref.setString(local, newlocal);
      return newlocal;
    } catch (_) {
      throw ConnectionException ();
    }
  }

  @override
  Future<String?> changedTheme(String newtheme) async {
    try {
      final pref = await SharedPreferences.getInstance();
      await pref.setString(theme, newtheme);
      return newtheme;
    } catch (_) {
      throw ConnectionException ();
    }
  }

  @override
  Future<bool> initDb() {
    // TODO: implement initDb
    throw UnimplementedError();
  }
}
