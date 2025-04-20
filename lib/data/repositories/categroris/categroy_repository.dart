import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:g/data/services/firebase_storage_service.dart';
import 'package:g/features/shop/models/category_model.dart';
import 'package:g/utils/exceptions/firebase_exceptions.dart';
import 'package:get/get.dart';

class CategroyRepository extends GetxController {
  static CategroyRepository get to => Get.find();
  final _db = FirebaseFirestore.instance;
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection('Categories').get();
      final list =
          snapshot.docs
              .map((document) => CategoryModel.fromSnapshot(document))
              .toList();
      return list;
    } on FirebaseException catch (e) {
      throw GFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw GFirebaseException(e.code).message;
    } catch (e) {
      throw ' Somthing went wrong, plase try again later';
    }
  }
  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try {
      final storage= Get.put(GFirebaseStorageService());
      for (var category in categories) {
        final file = await storage.getImageDataFromAssets(category.image);
        final url= await storage.uploadImageData('Categories', file,category.name);
        category.image=url;
        await _db.collection('Categories').doc(category.id).set(category.toJosn());
      
      }
        } on FirebaseException catch (e) {
      throw GFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw GFirebaseException(e.code).message;
    } catch (e) {
      throw ' Somthing went wrong, plase try again later';
    }
  }
}
