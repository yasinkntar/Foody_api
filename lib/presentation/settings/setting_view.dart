import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:foody/core/constant/colors.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
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
          ListTile(
            leading: Icon(Icons.language),
            title: Text(AppLocalizations.of(context)!.local),
            trailing: TextButton(onPressed: () {}, child: Text("En")),
          ),
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text(AppLocalizations.of(context)!.theme),
            trailing: TextButton(onPressed: () {}, child: Text("En")),
          ),
        ],
      )),
    );
  }
}
