import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/common/widgets/success_screen/success_screen.dart';
import 'package:g/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:g/features/shop/screens/checkout/billing_payment_section.dart';
import 'package:g/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:g/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:g/navigation_menu.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: GAppbar(
          title: Text(
            'مراجعة الطلب',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(GSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GCartItems(showAddRemoveButton: false),
                SizedBox(height: GSizes.spaceBtwSections),
                GCouponCode(),
                SizedBox(height: GSizes.spaceBtwSections),
                GRoundedContainer(
                  showBorder: true,
                  padding: EdgeInsets.all(GSizes.md),
                  backgroundColor: dark ? GColors.black : GColors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GBillingAmountSection(),
                      SizedBox(height: GSizes.spaceBtwItems),
                      Divider(),
                      SizedBox(height: GSizes.spaceBtwItems),
                      GBillingPaymentSection(),
                      SizedBox(height: GSizes.spaceBtwItems),
                      GBillingAddressSection(),
                      SizedBox(height: GSizes.spaceBtwItems),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: GImages.onBoardingImage1,
                  title: 'تم الدفع بنجاح',
                  subtTitle: 'سيتم شحن طلبك قريبًا',
                  onPressed: () => Get.to(() => NavigationMenu()),
                )),
            child: Text('إتمام الشراء 75.0 جم'),
          ),
        ),
      ),
    );
  }
}

class GCouponCode extends StatelessWidget {
  const GCouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return GRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? GColors.dark : GColors.white,
      padding: const EdgeInsets.only(
          top: GSizes.sm, bottom: GSizes.sm, right: GSizes.md, left: GSizes.sm),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Flexible(
            child: TextFormField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                hintText: 'هل لديك كود خصم؟ أدخله هنا',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark
                      ? GColors.white.withOpacity(.5)
                      : GColors.black.withOpacity(.5),
                  backgroundColor: Colors.grey.withOpacity(.2),
                  side: BorderSide(
                    color: Colors.grey.withOpacity(.1),
                  )),
              child: Text('تطبيق'),
            ),
          ),
        ],
      ),
    );
  }
}
