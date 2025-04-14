import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:g/features/authentication/screens/login/login.dart';
import 'package:g/features/authentication/screens/onboarding/onboarding.dart';
import 'package:g/features/authentication/screens/sign_up/verify_email.dart';
import 'package:g/navigation_menu.dart';
import 'package:g/utils/exceptions/firebase_auth_exception.dart';
import 'package:g/utils/exceptions/firebase_exceptions.dart';
import 'package:g/utils/exceptions/format_exceptions.dart';
import 'package:g/utils/exceptions/platform_exceptions.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final deviceStorage = GetStorage();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  void screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if(user.emailVerified){
        Get.offAll(() => NavigationMenu());
      }else{
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    }else{
    deviceStorage.writeIfNull('IsFirstTime', true);
    bool isFirstTime = deviceStorage.read('IsFirstTime') ?? true;
    isFirstTime
        ? Get.offAll(() => OnboardingScreen())
        : Get.offAll(() => LoginScreen());
    }



  }

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw GFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw GFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw GFormatException();
    } on PlatformException catch (e) {
      throw GPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later';
    }
  }
  Future<void> sendEmailverification() async {
    try {
      await _auth.currentUser!.sendEmailVerification( );
    } on FirebaseAuthException catch (e) {
      throw GFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw GFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw GFormatException();
    } on PlatformException catch (e) {
      throw GPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later';
    }
  }
  Future<void> logout() async {
    try {
    await FirebaseAuth.instance.signOut();
    Get.offAll(() => const LoginScreen());
      } on FirebaseAuthException catch (e) {
      throw GFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw GFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw GFormatException();
    } on PlatformException catch (e) {
      throw GPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later';
    }
  }
}
