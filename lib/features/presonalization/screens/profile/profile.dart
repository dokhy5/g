import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/images/circular_image.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

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
               GProfileMune(
                title: 'Name',
                value: 'Mohamed Aymen',
                onPressed: (){},
              ),
               GProfileMune(
                title: 'User Name',
                value: 'M.dokhy5',
                onPressed: (){},
              ),
const GSectionHeading(title: 'Porsonal Information',showActionButton: false,),
              const SizedBox(height: GSizes.spaceBtwItems),
              Divider(),
              const SizedBox(height: GSizes.spaceBtwItems),
              GProfileMune(
                title: 'User ID',
                value: '455677',
                
                icon: Iconsax.copy,onPressed: (){}
              ),
              GProfileMune(title: 'E-mail',value: 'mohamed.aymen@gmail.com',onPressed: (){},),
              GProfileMune(title: 'Phone Number',value: '+0123456789',onPressed: (){},),
              GProfileMune(title: 'Gander',value: 'Male',onPressed: (){},),
              GProfileMune(title: 'Date Of Birth',value: '19/12/2000',onPressed: (){},),
              Divider(),
              const SizedBox(height: GSizes.spaceBtwItems),
              Center(
                child: TextButton(onPressed: (){}, child: Text('Close Account',style: TextStyle(color:Colors.red,),),)
              )
            ],
          ),
        ),  
      ),
    );
  }
}

class GProfileMune extends StatelessWidget {
  const GProfileMune({
    super.key,  this.icon=Iconsax.arrow_right_34, required this.title, required this.value, required this.onPressed,
  });
  final IconData icon;
  final String title;
  final String value;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtwItems/1.5),
        child: Row(
          children: [
            Expanded(flex:3,child: Text(title,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,)),
            Expanded(flex:5,child: Text(value,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
            Expanded(child: Icon(icon,size: 18,)),
          ],
        ),
      ),
    );
  }
}
