import 'package:flutter/material.dart';
import 'package:g/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:g/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
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
            Form(
              key: controller.forgetPasswordFormKey,
              child: TextFormField(
                controller: controller.email,
                validator: GValidation.validateEmail,
                decoration: InputDecoration(
                  labelText: GText.email,
                  prefixIcon: const Icon(Iconsax.direct_right),
                ),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=>controller.sendPasswordResetEmail(),
                child: const Text(GText.submit),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
