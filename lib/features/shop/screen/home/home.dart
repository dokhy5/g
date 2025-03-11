import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:g/common/widgets/custom_shapes/container/search_container.dart';
import 'package:g/features/shop/screen/home/widgets/home_appbar.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/device/device_utility.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GPrimaryHeaderContainer(
              child: Column(
                children: [
                  GHomeAppbar(),    
                  SizedBox(height:GSizes.spaceBtwSections,),
                  GSearchContainer(
                    text: 'Search for products',
                 
                   
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
