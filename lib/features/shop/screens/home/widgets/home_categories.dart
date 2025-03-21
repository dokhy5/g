import 'package:flutter/material.dart';
import 'package:g/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:g/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class GHomeCategories extends StatelessWidget {
  const GHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return GVerticalImageText(
            image: GImages.oxyIcon,
            title: 'Oxy',
            onTap: () =>Get.to(()=>const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
