import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:g/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/device/device_utility.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
        final dark = GHelperFunctions.isDarkMode(context);

    return Positioned(bottom: GDeviceUtils.getBottomNavigationBarHight(),
    left: GSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect:   ExpandingDotsEffect(activeDotColor:dark? GColors.light : GColors.dark,  dotHeight: 6),
      ));

  }
}
