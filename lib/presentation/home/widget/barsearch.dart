import 'package:flutter/material.dart';
import 'package:foody/core/constant/colors.dart';
import 'package:foody/core/constant/constant.dart';
import 'package:foody/core/constant/images.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BarSearch extends StatefulWidget {
  const BarSearch({super.key});

  @override
  State<BarSearch> createState() => _BarSearchState();
}

class _BarSearchState extends State<BarSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: pBodyPadding,
      decoration: BoxDecoration(
        color: kbuttoncolorlight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(ksearch),
          const Gap(10),
          Text(
            AppLocalizations.of(context)!.hintsersch,
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(fontSize: 14, color: kAppBarText),
          )
        ],
      ),
    );
  }
}
