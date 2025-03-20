import 'package:flutter/material.dart';
import 'package:g/features/shop/screens/checkout/checkout.dart';
import 'package:g/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:g/features/shop/screens/product_details/widgets/product_detail_image_silder.dart';
import 'package:g/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:g/features/shop/screens/product_details/widgets/ratting_share_widget.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GProductDetailImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                right: GSizes.defaultSpace,
                left: GSizes.defaultSpace,
                bottom: GSizes.defaultSpace,
              ),

              child: Column(
                children: [GRatingShareWidget(), GProductMetaData(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: ()=>Get.to(()=>CheckoutScreen()), child: Text('Checkout')),


                ),
               // GBottomAddToCart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
