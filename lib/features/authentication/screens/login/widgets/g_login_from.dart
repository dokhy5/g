import 'package:flutter/material.dart';
import 'package:g/features/authentication/screens/sign_up/signup.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:g/utils/themes/custom_themes/outlined_button_theme.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GLoginFrom extends StatelessWidget {
  const GLoginFrom({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: GText.email,
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: GText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(GText.rememberMe),
                  ],
                ),
                TextButton(onPressed: () {}, child: Text(GText.forgotPassword)),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(GText.signIn),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwItems),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent, // No background color
                  side: BorderSide(color: dark ? GColors.white : GColors.black),
                ),
                onPressed: () => Get.to(() => SignupScreen()),
                child: Text(
                  GText.createAccount,
                  style: TextStyle(color: dark ? GColors.white : GColors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
