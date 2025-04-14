import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/sortable/sortable_products.dart';
import 'package:g/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: const GAppbar(
          title: Text(
            'الفئات الاكثر شعبية',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            child: GSortableProducts(),
            
          ),
        ),
      ),
    );
  }
}
