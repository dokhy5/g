import 'package:flutter/material.dart';
import 'package:g/features/authentication/screens/sign_up/verify_email.dart';
import 'package:g/features/authentication/screens/sign_up/widgets/terms_and_conditition_checkbox.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GSignupFrom extends StatelessWidget {
  const GSignupFrom({
    super.key,
    
  });

  
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: GText.fristName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: GSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: GText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),
           const SizedBox(height: GSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: GText.username,
              prefixIcon: Icon(Iconsax.personalcard),
            ),
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: GText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: GText.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: GText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: GSizes.spaceBtwSections),
          GTermsAndCondititionCheckbox(),
          const SizedBox(height: GSizes.spaceBtwSections),
    
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()=>VerifyEmailScreen()),
              child: Text(GText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
