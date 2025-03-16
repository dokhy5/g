import 'package:flutter/material.dart';
import 'package:g/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: Padding(
        padding: EdgeInsets.all(GSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              GText.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: GSizes.spaceBtwItems),
            Text(
              GText.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: GSizes.spaceBtwSections * 2),
            TextFormField(
              decoration: InputDecoration(
                labelText: GText.email,
                prefixIcon: const Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>Get.off(()=>const ResetPassword()),
                child: const Text(GText.submit),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
