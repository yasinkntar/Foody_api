import 'package:flutter/material.dart';
import 'package:foody/core/constant/colors.dart';
import 'package:gap/gap.dart';

class CatgoryItem extends StatefulWidget {
  const CatgoryItem({super.key});

  @override
  State<CatgoryItem> createState() => _CatgoryItemState();
}

class _CatgoryItemState extends State<CatgoryItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 122,
      height: 158,
      child: Column(children: [
        Container(
          width: 122,
          height: 122,
          decoration: BoxDecoration(
              color: kColorWhite,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    offset: const Offset(1, 12),
                    color: kboxshadow.withOpacity(0.68))
              ]),
          child: Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/conloe.appspot.com/o/pngtree-juicy-burgers-with-a-transparent-background-png-image_9002761.png?alt=media&token=7bd111fe-08db-4ce9-83a6-eb61e6fa59a7')),
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
        const Gap(10),
        Text(
          'Pizza',
          style:
              Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 18),
        )
      ]),
    );
  }
}
