import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g/common/widgets/success_screen/success_screen.dart';
import 'package:g/data/repositories/authentication/authentication_repository.dart';
import 'package:g/features/authentication/controllers/sign_up/verify_email_conttraller.dart';
import 'package:g/features/authentication/screens/login/login.dart';
import 'package:g/utils/constants/colors.dart' show GColors;
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key,  this.email});
final String? email;
  @override
  Widget build(BuildContext context) {
  final controller= Get.put(VerifyEmailController());
    final dark = GHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => AuthenticationRepository.instance.logout(),
            icon: const Icon(CupertinoIcons.clear),
          ),
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
              Image(
                image: AssetImage(GImages.onBoardingImage1),
                width: GHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),
              Text(
                GText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSizes.spaceBtwItems),
              Text(
                email??'',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSizes.spaceBtwItems),

              Text(
                GText.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      () => controller.checkEmailVerification(),
                  child: Text(GText.gContinue),
                ),
              ),
              const SizedBox(height: GSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: ()=> controller.sendEmailverification(),
                  child: Text(
                    GText.resendEmail,
                    style: TextStyle(
                      color: dark ? GColors.white : GColors.black,
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
