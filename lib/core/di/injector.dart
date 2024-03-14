import 'package:foody/data/datasources/local/setting_local_data_source.dart';
import 'package:foody/data/datasources/local/setting_local_data_sourceimp.dart';
import 'package:foody/data/repositories/app_repositorie/appRepository.dart';
import 'package:foody/presentation/app_cubit/app_cubit.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  injector.registerFactory(() => AppCubit(taskRepository: injector()));
    injector.registerFactory(() => AppRepositoryImpl(appLocalDataSource:  injector()));
}
