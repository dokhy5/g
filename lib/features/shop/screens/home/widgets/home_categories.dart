import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:g/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:g/common/widgets/shimmer/category_shimmer.dart';
import 'package:g/features/shop/controllers/category_controller.dart';
import 'package:g/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class GHomeCategories extends StatelessWidget {
  const GHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController=Get.put(CategoryController());
    return Obx((){
            if(categoryController.isLoading.value)return const GCategoryShimmer();
            if(categoryController.feauturedCategories.isEmpty){
              return Center(child: Text('No Data Found!',style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),);

            }
        return SizedBox(
        height: 80,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: categoryController.feauturedCategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            final category= categoryController.feauturedCategories[index];
            return GVerticalImageText(
              image: category.image,
              title: category.name,  
              onTap: () =>Get.to(()=>const SubCategoriesScreen()),
            );
          },
        ),
      );
  });
  }
}
