import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:g/data/repositories/authentication/authentication_repository.dart';
import 'package:g/features/presonalization/models/user_model.dart';
import 'package:g/utils/exceptions/firebase_exceptions.dart';
import 'package:g/utils/exceptions/format_exceptions.dart';
import 'package:g/utils/exceptions/platform_exceptions.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('users').doc(user.id).set(user.toJson());
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
  Future<UserModel> fatchUserDetails() async {
    try {
      final documentSnapshot = await _db.collection('users').doc(AuthenticationRepository.instance.authUser?.uid).get();
      if(documentSnapshot.exists){
        return UserModel.fromSnapshot(documentSnapshot);
      }else{
        return UserModel.empty();
      }
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
   Future<void> updateUserDetails(UserModel updatedUser) async {
    try {
      await _db.collection('users').doc(updatedUser.id).update(updatedUser.toJson());
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
   Future<void> updateSingelField(Map<String, dynamic> json) async {
    try {
      await _db.collection('users').doc(AuthenticationRepository.instance.authUser?.uid).update(json);
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
   Future<void> removeUserRecord(String userId) async {
    try {
    await _db.collection('users').doc(userId).delete(); 
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
