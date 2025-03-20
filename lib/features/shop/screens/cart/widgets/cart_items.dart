import 'package:flutter/material.dart';
import 'package:g/common/widgets/products/cart/cart_item.dart';
import 'package:g/common/widgets/products/cart/product_quantity_with_add_remove_button.dart';
import 'package:g/common/widgets/text/product_price_text.dart';
import 'package:g/utils/constants/sizes.dart';

class GCartItems extends StatelessWidget {
  const GCartItems({
    super.key,  this.showAddRemoveButton=true,
  });
  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: GSizes.spaceBtwItems),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          GCartItem(),
          if (showAddRemoveButton)const SizedBox(height: GSizes.spaceBtwItems),

          if (showAddRemoveButton)
         const Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
              Row(
                children: [
                  GProductPriceText(price: '75.0'), 
                ],
              ),
                  GProductQuantityWithAddRemoveButton(),
           ],
         )
        ],
      ),
    );
  }
}
