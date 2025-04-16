import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/features/presonalization/controllers/profile_controller/update_name_controller.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: GAppbar(
          title: Text('تغيير اسم المستخدم', style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'استخدم اسمك الحقيقي لتسهيل التحقق. سيظهر هذا الاسم في عدة صفحات.',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),
              Form(
                key: controller.updateNameFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.firstName,
                      validator: (value) => GValidation.validateEmptyText('الاسم الأول', value),
                      decoration: const InputDecoration(
                        labelText: 'الاسم الأول',
                        prefixIcon: Icon(Iconsax.user),
                      ),
                    ),
                    const SizedBox(height: GSizes.spaceBtwItems),
                    TextFormField(
                      controller: controller.lastName,
                      validator: (value) => GValidation.validateEmptyText('الاسم الثاني', value),
                      decoration: const InputDecoration(
                        labelText: 'الاسم الثاني',
                        prefixIcon: Icon(Iconsax.user),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: GSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.updateUserName(),
                  child: const Text('حفظ'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
