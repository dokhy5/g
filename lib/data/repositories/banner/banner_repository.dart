import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:g/features/shop/models/banner_model.dart';
import 'package:g/utils/exceptions/firebase_exceptions.dart';
import 'package:g/utils/exceptions/format_exceptions.dart';
import 'package:get/get.dart';

class BannerRepository extends GetxController {
  static BannerRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;
  Future<List<BannerModel>> fetchBanners() async {
    try {
      final result =
          await _db
              .collection('Banner')
              .where('Active', isEqualTo: true)
              .get();
      return result.docs
          .map((documentSnapshot) => BannerModel.fromSnapshot(documentSnapshot))
          .toList();
    } on FirebaseException catch (e) {
      throw GFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw GFormatException();
    } on PlatformException catch (e) {
      throw GFirebaseException(e.code).message;
    } catch (e) {
      throw ' Somthing went wrong, plase try again later';
    }
  }
}
