import 'package:flutter/material.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/themes/custom_themes/outlined_button_theme.dart';
import 'package:iconsax/iconsax.dart';

class GLoginFrom extends StatelessWidget {
  const GLoginFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: GSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: GTextS.email,
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: GTextS.password,
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
                    const Text(GTextS.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(GTextS.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(GTextS.signIn),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwItems),
    
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: GOutlinedButtonTheme.darkOutlinedButtonTheme.style,
                onPressed: () {},
                child: Text(GTextS.createAccount),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
