import 'package:flutter/material.dart';
import 'package:g/common/widgets/shimmer/shimmer_effect.dart';
import 'package:g/utils/constants/sizes.dart';

class GCategoryShimmer extends StatelessWidget {
  const GCategoryShimmer({super.key,  this.itemCount=6});
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(width: GSizes.spaceBtwItems,),
        itemBuilder: (_, _) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GShimmerEffect(hight: 55, width: 55,radius: 55,),
              SizedBox(height: GSizes.spaceBtwItems/2,),
              GShimmerEffect(hight: 8, width: 55),
            ],
          );
        },
      ),
    );
  }
}