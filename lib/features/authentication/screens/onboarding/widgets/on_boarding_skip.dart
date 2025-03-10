import 'package:flutter/material.dart';
import 'package:g/features/authentication/controllers/onboarding_controller.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: GDeviceUtils.getAppBarHeight(),
      right: GSizes.defaultSpace,
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: Text('Skip',style: Theme.of(context).textTheme.bodyMedium)),
    );
  }
}
