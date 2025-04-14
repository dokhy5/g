import 'package:flutter/material.dart';
import 'package:g/features/authentication/controllers/sign_up/signup_controller.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class GTermsAndCondititionCheckbox extends StatelessWidget {
  const GTermsAndCondititionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
        final dark = GHelperFunctions.isDarkMode(context);
        final controller = SignupController.instance;

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(()=> Checkbox(value: controller.privacyPolicy.value,
            onChanged: (value)=>controller.privacyPolicy.value=!controller.privacyPolicy.value,
          )),
        ),
        const SizedBox(width: GSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${GText.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${GText.privacyPolicy} ',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(
                  color: dark ? GColors.white : GColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? GColors.white : GColors.primary,
                ),
              ),
              TextSpan(
                text: '${GText.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${GText.termsOfUse} ',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(
                  color: dark ? GColors.white : GColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? GColors.white : GColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
