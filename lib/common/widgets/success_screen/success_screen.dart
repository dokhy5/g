import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g/features/authentication/screens/login/login.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtTitle, required this.onPressed});
final String image,title,subtTitle;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:() => Get.offAll(LoginScreen()), icon:const Icon(CupertinoIcons.clear))
        ],
        // iconTheme: IconThemeData(
        //   color: dark ?GColors.white : GColors.black,
        // )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              Image(image:AssetImage(image),width: GHelperFunctions.screenWidth()*0.6,),
              const SizedBox(height: GSizes.spaceBtwSections,),
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: GSizes.spaceBtwItems,),
             

              Text(subtTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: GSizes.spaceBtwSections,),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed, child: Text(GText.gContinue),)),
             const SizedBox(height: GSizes.spaceBtwItems,),



            ],
          ),
        ),
      ),
    );
  }
}
