import 'package:firebase_auth/firebase_auth.dart';
import 'package:g/data/repositories/user/user_repository.dart';
import 'package:g/features/presonalization/models/user_model.dart';
import 'package:g/utils/popups/loaders.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
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
}
