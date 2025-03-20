import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/icons/circular_icon.dart';
import 'package:g/common/widgets/loyouts/grid_loyout.dart';
import 'package:g/common/widgets/products/pruduct_cards/pruduct_card_vertical.dart';
import 'package:g/features/shop/screens/home/home.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // ضبط الاتجاه من اليمين إلى اليسار
      child: Scaffold(
        appBar: GAppbar(
          title: Text(
            'المفضلة', // تغيير العنوان إلى العربية
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            GCircularIcon(
              icon: Iconsax.add,
              onPressed: () => Get.to(HomeScreen()),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            child: Column(
              children: [
                GGridLoyout(
                  itemCount: 5,
                  itemBuilder: (_, index) => const GProductCardVertical(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
