import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foody/core/constant/strings.dart';
import 'package:foody/core/di/injector.dart' as di;
import 'package:foody/core/theme/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:foody/data/repositories/app_repositorie/setting_local_data_sourceimp.dart';
import 'package:foody/presentation/app_cubit/app_cubit.dart';
import 'package:foody/presentation/app_cubit/app_statue.dart';
import 'package:foody/presentation/home/home_view.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDependencies();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String local = 'en';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(
            create: (BuildContext context) =>
                AppCubit(appRepository: SettingLocalDataSourceimp()))
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if (state is AppGetDataLocalState) {
            local = state.local;
          }
        },
        builder: (context, state) {
          context.read<AppCubit>().getdataLcoal();
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              // darkTheme: Darkthem,
              title: appTitle,
              locale: Locale(local),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              home: const HomeView());
        },
      ),
    );
  }
}
