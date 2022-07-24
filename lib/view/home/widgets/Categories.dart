import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movies/constants.dart';
import '../../../controllers/Categories.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: height * 9,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => buildCategorysItem(context, index)),
      ),
    );
  }
}

Widget buildCategorysItem(BuildContext context, int index) {
  // ignore: unused_local_variable
  final categoryController = Get.put(MoviesController());
  return GestureDetector(
    onTap: () => categoryController.categoryChange(index),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GetX<MoviesController>(builder: (controller) {
        bool isIndex = controller.selectCategoty.value == index;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: isIndex ? kTextColor : Colors.black.withOpacity(0.4)),
            ),
            Container(
              height: 5,
              width: 40,
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isIndex ? Colors.red : Colors.transparent,
              ),
            )
          ],
        );
      }),
    ),
  );
}
