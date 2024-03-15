class AppStates {}

class AppInitState extends AppStates {}

class AppLodingState extends AppStates {}

class AppSuccessState extends AppStates {}

class AppErrorState extends AppStates {
  String error;
  AppErrorState({required this.error});
}

class AppGetDataLocalState extends AppStates {
  String local;
  AppGetDataLocalState({required this.local});
}
class AppGetDatathemeState extends AppStates {
  String theme;
  AppGetDatathemeState({required this.theme});
}
class AppChangedLocalState extends AppStates {}

class AppChangedthemeState extends AppStates {}
