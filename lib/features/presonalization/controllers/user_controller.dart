import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:g/data/repositories/authentication/authentication_repository.dart';
import 'package:g/data/repositories/user/user_repository.dart';
import 'package:g/features/authentication/screens/login/login.dart';
import 'package:g/features/presonalization/models/user_model.dart';
import 'package:g/features/presonalization/screens/profile/widgets/re_authentication_user_login_from.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/network_manger.dart';
import 'package:g/utils/popups/full_screen_loader.dart';
import 'package:g/utils/popups/loaders.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  final ProfilLodding = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  final hidePassword=false.obs;
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    fetchUserRecod();
  }
  Future<void> fetchUserRecod() async {
    try {
      ProfilLodding.value=true;
      final user = await userRepository.fatchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    }finally{
    ProfilLodding.value=false;
    }
  }
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        final nameParts = UserModel.nameParts(
          userCredentials.user!.displayName ?? '',
        );
        final userName = UserModel.generateUsername(
          userCredentials.user!.displayName ?? '',
        );
        final user = UserModel(
          id: userCredentials.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(''): '',
          userName: userName,
          email: userCredentials.user!.email??'',
          phoneNumber: userCredentials.user!.phoneNumber??'',
          profilePicture: userCredentials.user!.photoURL??'',
        );
        await UserRepository.instance.saveUserRecord(user);
      }
    } catch (e) {
      GLoaders.warningSnackBar(
        title: 'Data not saved',
        message:
            'Something went wrong while saving your data. Can you re-save your data in your profile.',
      );
    }
  }
  void deletAccountWarrningPopup(){
    Get.defaultDialog(
      contentPadding: EdgeInsets.all(GSizes.md),
      title: 'Delete Account',
      middleText: 'Are you sure you want to delete your account? This action is not reversible and all your data will be permanently deleted.',
      confirm: ElevatedButton(
        onPressed: () async =>deletUserAccunt(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
        
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: GSizes.lg),
          child: const Text('Delete'),
        ),
      ),
      cancel: OutlinedButton(
        onPressed: () => Navigator.of(Get.context!).pop(),
        child: const Text('Cancel'),
      ),
    );
  }
  void deletUserAccunt() async{
    try {
      // GFullScreenLoader.openLoadingDialog('Processing your request ...', GImages.onBoardingImage1);
      final auth=AuthenticationRepository.instance;
      final provider=auth.authUser!.providerData.map((e)=>e.providerId).first;
      if(provider.isNotEmpty){
        if(provider=='google.com'){
        await auth.signInWithGoogle();
        await auth.deleteAccount();
        // GFullScreenLoader.stopLoading();
        Get.offAll(()=>const LoginScreen());
        }else if(provider=='password'){
          // GFullScreenLoader.stopLoading();
          Get.offAll(()=>const ReAuthLoginForm());
          }
    }
  }catch(e){
    // GFullScreenLoader.stopLoading();
    GLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
  }
}
  void reAuthenticationEmailAndPasswordUser() async {
    try {
      // GFullScreenLoader.openLoadingDialog('Processing ...', GImages.onBoardingImage1);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // GFullScreenLoader.stopLoading();
        return;
      }
      if (!reAuthFormKey.currentState!.validate()) {
        // GFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance.reAuthenticationEmailAndPasswordUser(verifyEmail.text.trim(), verifyPassword.text.trim());
      await AuthenticationRepository.instance.deleteAccount();
      // GFullScreenLoader.stopLoading();
     Get.offAll(()=>const LoginScreen());
    } catch (e) {
      // GFullScreenLoader.stopLoading();
      GLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
