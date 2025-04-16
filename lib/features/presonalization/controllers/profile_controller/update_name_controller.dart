import 'package:flutter/material.dart';
import 'package:g/data/repositories/user/user_repository.dart';
import 'package:g/features/presonalization/controllers/user_controller.dart';
import 'package:g/features/presonalization/screens/profile/profile.dart';
import 'package:g/utils/helpers/network_manger.dart';
import 'package:g/utils/popups/full_screen_loader.dart';
import 'package:g/utils/popups/loaders.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();
  final userController =UserController.instance;
  final userRepository=Get.put(UserRepository());
  final firstName = TextEditingController();
  final lastName = TextEditingController();

 GlobalKey<FormState>updateNameFormKey= GlobalKey<FormState>();

  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  Future<void>initializeNames()async{
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }
  Future<void> updateUserName() async {
    try {
      GFullScreenLoader.openLoadingDialog('تحديث الاسم الشخصي...', 'loading');
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        GFullScreenLoader.stopLoading();
        return;
      }
      if (!updateNameFormKey.currentState!.validate()) {
        GFullScreenLoader.stopLoading();
        return;
      }
      Map<String, dynamic> name = {'firstName': firstName.text.trim(), 'lastName': lastName.text.trim()};
      await userRepository.updateSingelField(name);
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();
      GFullScreenLoader.stopLoading();
      GLoaders.successSnackBar(
        title: 'تم تحديث',
        message: 'تم تحديث الاسم الشخصي بنجاح',
      );
      Get.off(()=>const ProfileScreen());
    }catch(e){
      GLoaders.errorSnackBar(title: 'خطأ', message: e.toString());
      GFullScreenLoader.stopLoading();
    }
  }
}