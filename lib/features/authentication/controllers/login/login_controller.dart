import 'package:flutter/widgets.dart';
import 'package:g/data/repositories/authentication/authentication_repository.dart';
import 'package:g/features/presonalization/controllers/user_controller.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/helpers/network_manger.dart';
import 'package:g/utils/popups/full_screen_loader.dart';
import 'package:g/utils/popups/loaders.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    email.text = loginStorge.read('Remember_Me_Email') ?? '';
    password.text = loginStorge.read('Remember_Me_Password') ?? '';
    super.onInit();
  }
  static LoginController get instance => Get.find();
  final hidePassword = true.obs;
  final rememberMe= false.obs;
 final  loginStorge =GetStorage();

 final email =TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController= Get.put(UserController());
  Future<void> emailAndPasswordSignIn() async {
    try {
      GFullScreenLoader.openLoadingDialog('Logging you in ...', GImages.onBoardingImage1);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        GFullScreenLoader.stopLoading();
        return;
      }
      if (!loginFormKey.currentState!.validate()) {
        GFullScreenLoader.stopLoading();
        return;
      }
      if(rememberMe.value){
        loginStorge.write('Remember_Me_Email', email.text.trim());
        loginStorge.write('Remember_Me_Password', password.text.trim());
      }
      final userCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());
      GFullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      GFullScreenLoader.stopLoading();
      GLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  Future<void> googleSignIn() async {
    try {
     // GFullScreenLoader.openLoadingDialog('Logging you in ...', GImages.onBoardingImage1);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
         // GFullScreenLoader.stopLoading();
        return;
      }
      final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();
      await userController.saveUserRecord(userCredentials);
      GFullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      GFullScreenLoader.stopLoading();
      GLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}