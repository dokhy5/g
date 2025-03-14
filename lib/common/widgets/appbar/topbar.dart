import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/device/device_utility.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class GTopbar extends StatelessWidget implements PreferredSizeWidget {
  const GTopbar({
    super.key, required this.tabs,

  });

final List<Widget> tabs ;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return  TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: GColors.primary,
        unselectedLabelColor: GColors.darkGrey,
        labelColor: dark ? GColors.white : GColors.primary,
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(GDeviceUtils.getAppBarHeight()) ;
}
