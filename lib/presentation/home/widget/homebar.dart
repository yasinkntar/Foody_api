import 'package:flutter/material.dart';
import 'package:foody/core/constant/colors.dart';
import 'package:foody/core/constant/images.dart';
import 'package:foody/core/widget/appbar_widget.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

PreferredSizeWidget homebar(BuildContext context) => appBars(
    context: context,
    isback: false,
    titte: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppLocalizations.of(context)!.deliveryto,
            style: Theme.of(context).textTheme.displaySmall),
        const Gap(5),
        Row(
          children: [
            Text('First 6th of October',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: kAppBarText)),
            const Gap(5),
            Image.asset(karrowdown)
          ],
        )
      ],
    ),
    actioniamage: kcart);
