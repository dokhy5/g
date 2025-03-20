import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // ✅ ضبط الاتجاه من اليمين إلى اليسار
      child: Scaffold(
        appBar: GAppbar(
          title: Text(
            'طلبات المتجر',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          showBackArrow: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: const GOrderListItems(),
        ),
      ),
    );
  }
}
