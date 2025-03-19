import 'package:flutter/material.dart';
import 'package:g/common/widgets/icons/circular_icon.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class GBottomAddToCart extends StatelessWidget {
  const GBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: GSizes.defaultSpace, vertical: GSizes.defaultSpace/2),
      decoration: BoxDecoration(
        color:dark?GColors.darkerGrey:GColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(GSizes.cardRadiusLg),
          topRight: Radius.circular(GSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GCircularIcon(
                icon: Iconsax.minus,
                onPressed: () {},
                backgroundColor:  GColors.darkGrey,
                width: 40,
                height: 40,
                color:GColors.white,
              ),
              const SizedBox(width: GSizes.spaceBtwItems),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: GSizes.spaceBtwItems),
              GCircularIcon(
                icon: Iconsax.add,
                onPressed: () {},
                backgroundColor:  GColors.primary,
                width: 40,
                height: 40,
                color:GColors.white,
              ),

            ],
          ),
                        ElevatedButton(onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                
                padding: EdgeInsets.all(GSizes.md),
                backgroundColor:  GColors.black,
                side: const BorderSide(color: GColors.black),
              ),
              child:const Text('Add to Cart')),
        ],
      ),
    );
  }
}