import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:foody/core/constant/colors.dart';
import 'package:foody/presentation/app_cubit/app_cubit.dart';
import 'package:foody/presentation/app_cubit/app_statue.dart';
import 'package:foody/presentation/settings/widget/dilog_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  String local = '';
  String theme = '';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        if (state is AppGetDataLocalState) {
          local = state.local;
        } else if (state is AppGetDatathemeState) {
          theme = state.theme;
        } else if (state is AppChangedLocalState ||
            state is AppChangedthemeState) {
          context.read<AppCubit>().getdataLcoal();
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.pageSetting,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: kAppBarText)),
          ),
          body: SafeArea(
              child: Column(
            children: [
              InkWell(
                onTap: () => changedlocal(context),
                child: ListTile(
                  leading: const Icon(Icons.language),
                  title: Text(AppLocalizations.of(context)!.local),
                  trailing: Text(
                    local == "en"
                        ? AppLocalizations.of(context)!.enLanguage
                        : AppLocalizations.of(context)!.arLanguage,
                    style: TextStyle(
                        fontSize: 14,
                        color: kPrimaryColor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  var result =
                      theme == 'dark_mode' ? 'light_mode' : 'dark_mode';
                  context.read<AppCubit>().changedThmee(result);
                },
                child: ListTile(
                    leading: const Icon(Icons.dark_mode),
                    title: Text(AppLocalizations.of(context)!.theme),
                    trailing: theme == 'dark_mode'
                        ? Icon(
                            Icons.light_mode,
                            color: kPrimaryColor,
                          )
                        : Icon(
                            Icons.dark_mode,
                            color: kPrimaryColor,
                          )),
              ),
            ],
          )),
        );
      },
    );
  }
}
