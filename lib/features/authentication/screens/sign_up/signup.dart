import 'package:flutter/material.dart';
import 'package:g/common/widgets/login_signup/g_from_divider.dart';
import 'package:g/common/widgets/login_signup/g_social_buttons.dart';
import 'package:g/features/authentication/screens/sign_up/widgets/signup_from.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get_utils/src/extensions/export.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: dark ?GColors.white : GColors.black,
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                GText.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),
              GSignupFrom(),
              const SizedBox(height: GSizes.spaceBtwSections),
              GFromDivider(dividerText: GText.orSignUpWith.capitalize!),
              const SizedBox(height: GSizes.spaceBtwSections),
              GSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
