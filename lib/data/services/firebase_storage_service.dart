import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class GFirebaseStorageService extends GetxController{
  static GFirebaseStorageService get to => Get.find();
  final _firebaseStorage= FirebaseStorage.instance;

  Future<Uint8List> getImageDataFromAssets(String path) async {
    try {
      final byteData = await rootBundle.load(path);
      final imageData=  byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
      return imageData;
    } catch (e) {
      throw 'Error loading image: $e';
    }
  }
  Future<String> uploadImageData(String path, Uint8List iamge, String name) async {
    try {
      final ref = _firebaseStorage.ref().child(path).child(name);
      await ref.putData(iamge);
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      if (e is FirebaseException) {
        throw 'Firebase error: ${e.message}';
      } else if (e is SocketException) {
        throw 'Network error: ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform error: ${e.message}';
      }
      else {
      throw 'Error uploading image: $e';
      }
    }
  }
  Future<String> uploadImageFile(String path, XFile image) async {
    try {
      final ref = _firebaseStorage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      if (e is FirebaseException) {
        throw 'Firebase error: ${e.message}';
      } else if (e is SocketException) {
        throw 'Network error: ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform error: ${e.message}';
      }
      else {
      throw 'Error uploading image: $e';
      }
    }
  }
}