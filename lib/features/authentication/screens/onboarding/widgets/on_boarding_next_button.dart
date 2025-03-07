import 'package:flutter/material.dart';
import 'package:g/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/device/device_utility.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Positioned(
      right: GSizes.defaultSpace,
      bottom: GDeviceUtils.getBottomNavigationBarHight(),

      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? GColors.primary : Colors.black,
          side: BorderSide.none,
        ),
        child: const Icon(Iconsax.arrow_right_3, color: Colors.white),
      ),
    );
  }
}
