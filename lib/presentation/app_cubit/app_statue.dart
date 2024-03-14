class AppStates {}

class AppInitState extends AppStates {}

class AppLodingState extends AppStates {}

class AppSuccessState extends AppStates {}

class AppGetDataState extends AppStates {
  String theme;
  String local;
  AppGetDataState({required this.local, required this.theme});
}

class AppChangedLocalState extends AppStates {}

class AppChangedthemeState extends AppStates {}
