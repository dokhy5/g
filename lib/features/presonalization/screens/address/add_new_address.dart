import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: GAppbar(title: Text('إضافة عنوان جديد'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.user),
                      labelText: 'الاسم',
                    ),
                  ),
                  SizedBox(height: GSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.mobile),
                      labelText: 'رقم الهاتف',
                    ),
                  ),
                  SizedBox(height: GSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.building_4),
                      labelText: 'الشارع',
                    ),
                  ),
                  const SizedBox(height: GSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.activity),
                      labelText: 'المدينة',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('حفظ'),
          ),
        ),
      ),
    );
  }
}
