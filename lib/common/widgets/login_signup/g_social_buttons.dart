import 'package:flutter/material.dart';
import 'package:g/features/authentication/controllers/login/login_controller.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';

class GSocialButtons extends StatelessWidget {
  const GSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: GColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () => controller.googleSignIn(),
            icon: Image(
              width: GSizes.iconMd,
              height: GSizes.iconMd,
              image: AssetImage(GImages.google),
            ),
          ),
        ),
        const SizedBox(width: GSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: GColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: GSizes.iconMd,
              height: GSizes.iconMd,
              image: AssetImage(GImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
