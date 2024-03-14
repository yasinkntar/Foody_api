abstract class SettingLocalDataSource {
  Future<bool> initDb();
  Future<String?> getLocale();
  Future<String?> getTheme();
  Future<String?> changedLocale(String newlocal);
  Future<String?> changedTheme(String newtheme);
}
