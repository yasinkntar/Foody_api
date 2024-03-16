import 'package:dartz/dartz.dart';
import 'package:foody/core/error/failures.dart';

abstract class SettingLocalDataSource {
  Future<Either<Failure, String>> getLocale();
  Future<Either<Failure, String>> getTheme();
  Future<Either<Failure, String>> changedLocale(String newlocal);
  Future<Either<Failure, String>> changedTheme(String newtheme);
  Future<Either<Failure, bool>> checkskipwelcome();
  Future<Either<Failure, bool>> setskipwelcome();
}
