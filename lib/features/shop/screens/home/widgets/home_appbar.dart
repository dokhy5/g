import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/text_strings.dart';

class GHomeAppbar extends StatelessWidget {
  const GHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            GText.homeAppBarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(color: GColors.grey),
          ),
          Text(
            GText.homeAppBarSubtitle,
            style: Theme.of(context).textTheme.headlineSmall!
                .apply(color: GColors.white),
          ),
        ],
      ),
      actions: [
        GCartCounterIcon(
          onPressed: () {},
          iconColor: GColors.white,
        ),
    
      ],
    );
  }
}
