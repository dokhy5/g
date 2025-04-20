import 'package:flutter/foundation.dart';
import 'package:g/data/repositories/categroris/categroy_repository.dart';
import 'package:g/features/shop/models/category_model.dart';
import 'package:g/utils/popups/loaders.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();
  final isLoading=false.obs;
  final _categroyRespository= Get.put(CategroyRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> feauturedCategories = <CategoryModel>[].obs;
  @override
  void onInit(){
    fetchCategories();
    super.onInit();
  }
  Future<void>fetchCategories()async{
    try{
      isLoading.value=true;
      final categories= await _categroyRespository.getAllCategories();
      allCategories.assignAll(categories) ;
      feauturedCategories.assignAll(allCategories.where((category) => category.isFeatured&& category.parentId.isEmpty).take(8).toList());
    }catch(e){
      GLoaders.errorSnackBar(title: 'Error',message: e.toString());
    }finally{ 
      isLoading.value=false;
      
    }
  }

}