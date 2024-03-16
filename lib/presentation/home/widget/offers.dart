import 'package:flutter/widgets.dart';
import 'package:foody/core/constant/colors.dart';
import 'package:foody/core/constant/constant.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key, required this.imageoffers});
  final List<String> imageoffers;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      child: ScrollPageView(
          controller: ScrollPageController(
            initialPage: 0,
          ),
          delay: const Duration(seconds: 15),
          indicatorRadius: 10,
          children: imageoffers.map((image) => offeritem(image)).toList()),
    );
  }
}

Widget offeritem(String urlimage) {
  return Container(
    height: 160,
    margin: const EdgeInsets.symmetric(horizontal: 2),
    decoration: BoxDecoration(
        color: koffers,
        borderRadius: BorderRadius.circular(10),
        image:
            DecorationImage(image: NetworkImage(urlimage), fit: BoxFit.fill)),
  );
}

Widget imageView(String image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(8),
      child: Image.network(image, fit: BoxFit.cover),
    ),
  );
}
