import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:g/common/widgets/images/rounded_image.dart';
import 'package:g/common/widgets/shimmer/shimmer_effect.dart';
import 'package:g/features/shop/controllers/banner_controller.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';

class GPromoSlider extends StatelessWidget {
  const GPromoSlider({super.key, required this.banners});
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Obx(() {
      if (controller.isLoading.value)
        return const GShimmerEffect(hight: 190, width: double.infinity);
      if (controller.banners.isEmpty) {
        return const Text('No Data Found!');
      } else {
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged:
                    (index, _) => controller.updatePageIndicator(index),
              ),
              items:
                  controller.banners
                      .map(
                        (banner) => GRoundedImage(
                          imageUrl: banner.imageUrl,
                          isNetworkImage: true,
                          onPressed: () => Get.toNamed(banner.targetScreen),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: GSizes.spaceBtwItems),
            Center(
              child: Obx(
                () => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (var i = 0; i < controller.banners.length; i++)
                      GCircularContainer(
                        margin: EdgeInsets.only(right: 10),
                        width: 20,
                        height: 4,
                        backgroundColor:
                            controller.carousalCurrentIndex.value == i
                                ? GColors.primary
                                : GColors.grey,
                      ),
                  ],
                ),
              ),
            ),
          ],
        );
      }
    });
  }
}
