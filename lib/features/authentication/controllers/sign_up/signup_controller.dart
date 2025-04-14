import 'package:flutter/material.dart';
import 'package:g/data/repositories/authentication/authentication_repository.dart';
import 'package:g/data/repositories/user/user_repository.dart';
import 'package:g/features/authentication/screens/sign_up/verify_email.dart';
import 'package:g/features/presonalization/models/user_model.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/helpers/network_manger.dart';
import 'package:g/utils/popups/full_screen_loader.dart';
import 'package:g/utils/popups/loaders.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final firstName = TextEditingController();
  final password = TextEditingController();
  final userName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  Future<void> signup() async {
    try {
      GFullScreenLoader.openLoadingDialog(
        'We are processing your Information',
        GImages.google,
      );
      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        GFullScreenLoader.stopLoading();
        return;
      }

      if (!signupFormKey.currentState!.validate()) {
        GFullScreenLoader.stopLoading();
        return;
      }

      if (!privacyPolicy.value) {
        GLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create an account, you must have to read and accept the Privacy Policy & Terms of Use.',
        );
        return;
      }
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
            email.text.trim(),
            password.text.trim(),
          );
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);
      GFullScreenLoader.stopLoading();
      GLoaders.successSnackBar(
        title: 'Congratulations!',
        message: 'You account has been created! Verify email to continue',
      );
      Get.to(() =>  VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      GLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } 
  }
}
