import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:g/common/widgets/icons/circular_icon.dart';
import 'package:g/common/widgets/images/circular_image.dart';
import 'package:g/common/widgets/images/rounded_image.dart';
import 'package:g/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:g/common/widgets/text/product_price_text.dart';
import 'package:g/common/widgets/text/product_title_text.dart';
import 'package:g/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:g/features/shop/screens/product_details/widgets/product_detail_image_silder.dart';
import 'package:g/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:g/features/shop/screens/product_details/widgets/ratting_share_widget.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/enums.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

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
                  child: ElevatedButton(onPressed: (){}, child: Text('Checkout')),


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
