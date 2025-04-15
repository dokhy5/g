import 'package:flutter/cupertino.dart';
import 'package:g/data/repositories/authentication/authentication_repository.dart';
import 'package:g/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/helpers/network_manger.dart';
import 'package:g/utils/popups/full_screen_loader.dart';
import 'package:g/utils/popups/loaders.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
  sendPasswordResetEmail() async {
    try {
      GFullScreenLoader.openLoadingDialog('Processing your request ...', GImages.onBoardingImage1);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        GFullScreenLoader.stopLoading();
        return;
      }
      if (!forgetPasswordFormKey.currentState!.validate()) {
        GFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());
      GFullScreenLoader.stopLoading();

      GLoaders.successSnackBar(
        title: 'Email Sent',
        message: 'Please check your email for reset link.'.tr,
      );
      Get.to(()=> ResetPassword(email: email.text.trim(),));
    } catch (e) {
      GFullScreenLoader.stopLoading();
      GLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
      
    }
  }
  resendPasswordResetEmail(String email) async {
 try {
      GFullScreenLoader.openLoadingDialog('Processing your request ...', GImages.onBoardingImage1);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        GFullScreenLoader.stopLoading();
        return;
      }
  
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);
      GFullScreenLoader.stopLoading();

      GLoaders.successSnackBar(
        title: 'Email Sent',
        message: 'Please check your email for reset link.'.tr,
      );

    } catch (e) {
      GFullScreenLoader.stopLoading();
      GLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
      
    }
  }

  
}