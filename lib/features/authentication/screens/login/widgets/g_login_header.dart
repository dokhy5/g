import 'package:flutter/material.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class GLoginHeader extends StatelessWidget {
  const GLoginHeader({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark= GHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? GImages.darkAppLogo : GImages.lightAppLogo,
          ),
        ),
    
        Text(
          GTextS.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: GSizes.sm),
        Text(
          GTextS.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
