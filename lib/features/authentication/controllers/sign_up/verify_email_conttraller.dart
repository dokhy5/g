import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:g/common/widgets/success_screen/success_screen.dart';
import 'package:g/data/repositories/authentication/authentication_repository.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/popups/loaders.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();
  @override
  void onInit() {
    sendEmailverification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  sendEmailverification() async {
    try {
      await AuthenticationRepository.instance.sendEmailverification();
      GLoaders.successSnackBar(
        title: 'Email Sent',
        message: 'Please check your email for verification link.',
      );
    } catch (e) {
      GLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 5), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessScreen(
            image: GImages.onBoardingImage1,
            title: GText.yourAccountIsCreated,
            subtTitle: GText.yourAccountIsCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
        );
      }
    });
  }

  checkEmailVerification() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(
        () => SuccessScreen(
          image: GImages.onBoardingImage1,
          title: GText.yourAccountIsCreated,
          subtTitle: GText.yourAccountIsCreatedSubTitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect(),
        ),
      );
    }
  }
}
