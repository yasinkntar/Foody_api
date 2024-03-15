import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:foody/presentation/app_cubit/app_cubit.dart';

void changedlocal(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: 200.0,
          color: Colors.transparent, //could change this to Color(0xFF737373),
          //so you don't have to change MaterialApp canvasColor
          child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => context.read<AppCubit>().changedLcoal('ar'),
                    child: ListTile(
                      leading: const Icon(Icons.language),
                      title: Text(AppLocalizations.of(context)!.arLanguage),
                    ),
                  ),
                  InkWell(
                    onTap: () => context.read<AppCubit>().changedLcoal('en'),
                    child: ListTile(
                      leading: const Icon(Icons.language),
                      title: Text(AppLocalizations.of(context)!.enLanguage),
                    ),
                  ),
                ],
              )),
        );
      });
}
