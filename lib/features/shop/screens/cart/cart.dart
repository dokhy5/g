import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/products/cart/cart_item.dart';
import 'package:g/common/widgets/products/cart/product_quantity_with_add_remove_button.dart';
import 'package:g/common/widgets/text/product_price_text.dart';
import 'package:g/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:g/features/shop/screens/checkout/checkout.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, 
      child: Scaffold(
        appBar: GAppbar(
          title: Text(
            'سلة الشراء',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          showBackArrow: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(GSizes.defaultSpace),
          child: GCartItems(),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: ()=>Get.to(()=>CheckoutScreen()),
            child: Text('إتمام الشراء 75.0 جم'),
          ),
        ),
      ),
    );
  }
}
