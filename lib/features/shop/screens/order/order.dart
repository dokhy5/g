import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:g/utils/constants/sizes.dart';

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
