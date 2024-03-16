
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  // injector.registerFactory(() => AppCubit(taskRepository: injector()));
  // injector
  //     .registerFactory(() => AppRepositoryImpl(appLocalDataSource: injector()));
  // injector
  //     .registerFactory(() => AppRepositoryImpl(appLocalDataSource: injector()));
  // injector.registerSingleton<SettingLocalDataSource>();
}
