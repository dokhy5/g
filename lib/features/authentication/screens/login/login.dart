import 'package:flutter/material.dart';
import 'package:g/common/styles/spacing_styles.dart';
import 'package:g/common/widgets/login_signup/g_from_divider.dart';
import 'package:g/common/widgets/login_signup/g_social_buttons.dart';
import 'package:g/features/authentication/screens/login/widgets/g_login_from.dart';
import 'package:g/features/authentication/screens/login/widgets/g_login_header.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:get/get_utils/get_utils.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: GSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              GLoginHeader(),

              GLoginFrom(),

              GFromDivider(dividerText: GText.orSignInWith.capitalize!),

              const SizedBox(height: GSizes.spaceBtwItems),

              GSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}
