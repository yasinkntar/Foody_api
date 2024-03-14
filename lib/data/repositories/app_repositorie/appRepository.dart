import 'package:dartz/dartz.dart';
import 'package:foody/core/error/exceptions.dart';
import 'package:foody/core/error/failures.dart';
import 'package:foody/data/datasources/local/setting_local_data_source.dart';

abstract class AppRepository {
  Future<Either<Failure, String>> getTheme();
  Future<Either<Failure, String>> getlocal();
  Future<Either<Failure, String>> setTheme(String newtheme);
  Future<Either<Failure, String>> setlocal(String newlocal);
}

class AppRepositoryImpl implements AppRepository {
  final SettingLocalDataSource appLocalDataSource;

  const AppRepositoryImpl({required this.appLocalDataSource});
  @override
  Future<Either<Failure, String>> getTheme() async {
    try {
      final response = await appLocalDataSource.getTheme();
      return Right(response ?? "light");
    } on NoDataException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getlocal() async {
    try {
      final response = await appLocalDataSource.getLocale();
      return Right(response ?? "en");
    } on NoDataException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, String>> setTheme(String newtheme) async {
    try {
      final response = await appLocalDataSource.changedTheme(newtheme);
      return Right(response ?? newtheme);
    } on NoDataException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, String>> setlocal(String newlocal) async {
    try {
      final response = await appLocalDataSource.changedLocale(newlocal);
      return Right(response ?? newlocal);
    } on NoDataException {
      return Left(CacheFailure());
    }
  }
}
