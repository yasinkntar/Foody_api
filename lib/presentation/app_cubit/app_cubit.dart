import 'package:foody/data/repositories/app_repositorie/appRepository.dart';
import 'package:foody/presentation/app_cubit/app_statue.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit({required this.taskRepository}) : super(AppInitState());

  final AppRepositoryImpl taskRepository;
  
  void getdataLcoal() async {
    emit(AppLodingState());
    taskRepository.getlocal()
  }
}
