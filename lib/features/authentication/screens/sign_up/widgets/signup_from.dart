import 'package:flutter/material.dart';
import 'package:g/features/authentication/controllers/sign_up/signup_controller.dart';
import 'package:g/features/authentication/screens/sign_up/widgets/terms_and_conditition_checkbox.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GSignupForm extends StatelessWidget {
  const GSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      GValidation.validateEmptyText('First name', value),
                  decoration: const InputDecoration(
                    labelText: GText.fristName, // FIXED TYPO
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: GSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      GValidation.validateEmptyText('Last name', value),
                  decoration: const InputDecoration(
                    labelText: GText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.userName,
            validator: (value) =>
                GValidation.validateEmptyText('User name', value),
            decoration: const InputDecoration(
              labelText: GText.username,
              prefixIcon: Icon(Iconsax.personalcard),
            ),
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.email,
            validator: (value) => GValidation.validateEmail(value),
            decoration: const InputDecoration(
              labelText: GText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => GValidation.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: GText.phoneNo,
              prefixIcon: Icon(Iconsax.call),
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
          const SizedBox(height: GSizes.spaceBtwSections),
          const GTermsAndCondititionCheckbox(),
          const SizedBox(height: GSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: Text(GText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
