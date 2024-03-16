import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:foody/core/constant/colors.dart';

import 'package:foody/core/constant/constant.dart';
import 'package:foody/core/constant/images.dart';
import 'package:foody/core/widget/appbar_widget.dart';
import 'package:foody/presentation/home/widget/barsearch.dart';
import 'package:foody/presentation/home/widget/catgorye_item.dart';
import 'package:foody/presentation/home/widget/homebar.dart';
import 'package:foody/presentation/home/widget/offers.dart';
import 'package:gap/gap.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  static const _images = [
    'https://firebasestorage.googleapis.com/v0/b/conloe.appspot.com/o/Image%20Backround.png?alt=media&token=3b2d4a23-6515-4227-a550-3f540f08f370',
    'https://firebasestorage.googleapis.com/v0/b/conloe.appspot.com/o/Image%20Backround.png?alt=media&token=3b2d4a23-6515-4227-a550-3f540f08f370'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homebar(context),
      body: SafeArea(
        child: Padding(
          padding: pBodyPadding,
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.afternoon('userName'),
                        style: Theme.of(context).textTheme.labelMedium),
                    const Gap(15),
                    const BarSearch(),
                    const Gap(15),
                    const OffersWidget(imageoffers: _images),
                    const Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Catgoryes',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(fontSize: 20),
                        ),
                        Row(
                          children: [
                            Text(
                              'See All',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(fontSize: 16),
                            ),
                            const Gap(5),
                            Image.asset(kto)
                          ],
                        )
                      ],
                    ),
                    const Gap(15),
                    SizedBox(
                      height: 158,
                      child: ListView.separated(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => const CatgoryItem(),
                        separatorBuilder: (context, index) => const Gap(10),
                      ),
                    )
                  ])),
        ),
      ),
    );
  }
}
