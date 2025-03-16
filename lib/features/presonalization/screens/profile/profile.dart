import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/images/circular_image.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: GAppbar(title: Text('Profile'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [

              SizedBox(width: double.infinity,
                child: Column(
                  children: [
                    GCircularImage(image: GImages.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: Text('Change Profile Picture',style: TextStyle(color:dark?GColors.white:GColors.black),),),
                    
                  ],
                ),
              ),
              const SizedBox(height: GSizes.spaceBtwItems/2),
              const Divider(),
              const SizedBox(height: GSizes.spaceBtwItems),
              const GSectionHeading(title: 'Profile information',showActionButton: false,),
              const SizedBox(height: GSizes.spaceBtwItems),
              Row(
                children: [
                  Text('Name',style: Theme.of(context).textTheme.bodySmall),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
