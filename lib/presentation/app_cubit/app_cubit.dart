import 'package:foody/data/repositories/app_repositorie/setting_local_data_sourceimp.dart';
import 'package:foody/presentation/app_cubit/app_statue.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit({required this.appRepository}) : super(AppInitState());

  final SettingLocalDataSourceimp appRepository;

  void getdataLcoal() async {
    emit(AppLodingState());
    var result = await appRepository.getLocale();
    result.fold(
        (failure) => null, (sur) => emit(AppGetDataLocalState(local: sur)));
    var result1 = await appRepository.getTheme();
    result1.fold(
        (failure) => null, (sur) => emit(AppGetDatathemeState(theme: sur)));
    emit(AppSuccessState());
  }

  void changedLcoal(String local) async {
    emit(AppLodingState());
    var result = await appRepository.changedLocale(local);
    result.fold((failure) => null, (sur) => emit(AppChangedLocalState()));
    emit(AppSuccessState());
  }

  void changedThmee(String theme) async {
    emit(AppLodingState());
    var result = await appRepository.changedTheme(theme);
    result.fold((failure) => null, (sur) => emit(AppChangedLocalState()));
    emit(AppSuccessState());
  }
}
