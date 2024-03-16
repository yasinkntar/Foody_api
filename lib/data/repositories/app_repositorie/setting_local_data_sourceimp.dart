import 'package:dartz/dartz.dart';
import 'package:foody/core/error/failures.dart';
import 'package:foody/data/datasources/local/setting_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingLocalDataSourceimp implements SettingLocalDataSource {
  static String theme = 'theme';
  static String onBoardingSkipped = 'onBoardingSkipped';
  static String local = 'local';
  static String localdefault = 'en';
  static String themedefault = 'light_mode';

  @override
  Future<Either<Failure, String>> changedLocale(String newlocal) async {
    try {
      final pref = await SharedPreferences.getInstance();
      await pref.setString(local, newlocal);
      return Right(newlocal);
    } catch (_) {
      return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, String>> changedTheme(String newtheme) async {
    try {
      final pref = await SharedPreferences.getInstance();
      await pref.setString(theme, newtheme);
      return Right(newtheme);
    } catch (_) {
      return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getLocale() async {
    try {
      final pref = await SharedPreferences.getInstance();
      String? result = pref.getString(local);
      if (result == null) {
        pref.setString(local, localdefault);
        return Right(pref.getString(local)!);
      }
      return Right(pref.getString(local)!);
    } catch (e) {
      return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getTheme() async {
    try {
      final pref = await SharedPreferences.getInstance();
      String? result = pref.getString(theme);
      if (result == null) {
        pref.setString(theme, themedefault);
        return Right(pref.getString(themedefault)!);
      }
      return Right(result);
    } catch (e) {
      return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> checkskipwelcome() async {
    try {
      final pref = await SharedPreferences.getInstance();
      bool? result = pref.getBool(onBoardingSkipped);
      if (result == null) {
        pref.setBool(onBoardingSkipped, false);
        return Right(pref.getBool(onBoardingSkipped)!);
      }
      return Right(result);
    } catch (e) {
      return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> setskipwelcome() async {
    try {
      final pref = await SharedPreferences.getInstance();
      await pref.setBool(onBoardingSkipped, true);
      return const Right(true);
    } catch (_) {
      return left(CacheFailure());
    }
  }
}
