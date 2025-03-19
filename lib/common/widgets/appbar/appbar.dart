import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/device/device_utility.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GAppbar extends StatelessWidget implements PreferredSizeWidget {
  const GAppbar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: GSizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading:
              showBackArrow
                  ? IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(Iconsax.arrow_right_3,color: dark?GColors.white:GColors.black,size: GSizes.iconMd,),
                  )
                  : leadingIcon != null
                  ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(leadingIcon),
                  )
                  : null,
          title: title,
          actions: actions,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(GDeviceUtils.getAppBarHeight());
}
