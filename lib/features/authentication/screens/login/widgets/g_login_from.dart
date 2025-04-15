import 'package:flutter/material.dart';
import 'package:g/features/authentication/controllers/login/login_controller.dart';
import 'package:g/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:g/features/authentication/screens/sign_up/signup.dart';
import 'package:g/navigation_menu.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:g/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GLoginFrom extends StatelessWidget {
  const GLoginFrom({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final dark = GHelperFunctions.isDarkMode(context);

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              validator: (value)=>GValidation.validateEmail(value),
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: GText.email,
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),
             Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => GValidation.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: GText.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye_slash
                      : Iconsax.eye),
                ),
              ),
            ),
          ),
            const SizedBox(height: GSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(()=> Checkbox(value: controller.rememberMe.value, onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value)), 
                    const Text(GText.rememberMe),
                  ],
                ),
                TextButton(onPressed: ()=> Get.to(()=> ForgetPassword()), child: Text(GText.forgetPassword,style: TextStyle(color: dark ? GColors.white : GColors.black),)),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSignIn(),
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
