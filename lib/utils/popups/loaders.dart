import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GLoaders {
  static  successSnackBar({required title , message='',duration=3}){
    Get.snackbar(title,
     message,
     isDismissible: true,
     shouldIconPulse: true,
     colorText: Colors.white,
     backgroundColor:  GColors.primary,
     snackPosition: SnackPosition.BOTTOM,
     margin: const EdgeInsets.all(10),
     icon: const Icon(Iconsax.check,color:GColors.white),
    
    );
  }
    static  warningSnackBar({required title , message=''}){
    Get.snackbar(title,
     message,
     isDismissible: true,
     shouldIconPulse: true,
     colorText: Colors.white,
     snackPosition: SnackPosition.BOTTOM,
     backgroundColor:  GColors.warning,
     duration: Duration(seconds: 3),
     margin: const EdgeInsets.all(20),
     icon: const Icon(Iconsax.warning_2,color:GColors.white),
    
    );
  }
   static  errorSnackBar({required title , message=''}){
    Get.snackbar(title,
     message,
     isDismissible: true,
     shouldIconPulse: true,
     colorText: Colors.white,
     snackPosition: SnackPosition.BOTTOM,
     backgroundColor:  Colors.red.shade600,
     duration: Duration(seconds: 3),
     margin: const EdgeInsets.all(20),
     icon: const Icon(Iconsax.warning_2,color:GColors.white),
    
    );
  }
}