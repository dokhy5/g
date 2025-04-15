import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:g/features/authentication/screens/login/login.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key, required this.email});
  final String email ;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
        // iconTheme: IconThemeData(
        //   color: dark ?GColors.white : GColors.black,
        // )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(GImages.onBoardingImage1),
                width: GHelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(height: GSizes.spaceBtwSections),
              Text(email, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
              const SizedBox(height: GSizes.spaceBtwItems),
              Text(
                GText.changePasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSizes.spaceBtwItems),

              Text(
                GText.changePasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=> Get.offAll(LoginScreen()),
                  child: Text(GText.done),
                ),
              ),
              const SizedBox(height: GSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () =>ForgetPasswordController.instance.resendPasswordResetEmail(email),
                  child: Text(
                    GText.resendEmail,
                    style: TextStyle( 
                      color:dark?GColors.white:GColors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
