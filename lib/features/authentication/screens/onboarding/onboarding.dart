import 'package:flutter/material.dart';
import 'package:g/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:g/features/authentication/screens/onboarding/widgets/on_boardin_page.dart';
import 'package:g/features/authentication/screens/onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:g/features/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:g/features/authentication/screens/onboarding/widgets/on_boarding_skip.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:get/get.dart';


class OnboardingScreen extends StatelessWidget {
   const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final controller=Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children:const [
              OnBoardinPage(
                image: GImages.onBoardingImage1,
                title: GTextS.onBoardingTitle1,
                subtitle: GTextS.onBoardingSubtitle1,
              ),
              OnBoardinPage(
                image: GImages.onBoardingImage1,
                title: GTextS.onBoardingTitle2,
                subtitle: GTextS.onBoardingSubtitle2,
              ),
              OnBoardinPage(
                image: GImages.onBoardingImage1,
                title: GTextS.onBoardingTitle3,
                subtitle: GTextS.onBoardingSubtitle3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
