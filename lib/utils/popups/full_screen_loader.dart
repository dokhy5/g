import 'package:flutter/material.dart';
import 'package:g/common/widgets/loaders/animation_loader.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class GFullScreenLoader {
  static void openLoadingDialog(String text ,String animation){
    showDialog(context: Get.overlayContext!,barrierDismissible: false ,
     builder:(_)=> PopScope( 
     canPop: false,
     child: Container(
      color: GHelperFunctions.isDarkMode(Get.context!)?GColors.dark:GColors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 250),
          GAnimationLoader(text: text, animation: animation)
        ],
      ),
     ),

     ) 
    );

  }
  static void stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}