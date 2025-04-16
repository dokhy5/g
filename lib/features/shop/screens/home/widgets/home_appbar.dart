import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:g/common/widgets/shimmer_effect/shimmer_effect.dart';
import 'package:g/features/presonalization/controllers/user_controller.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class GHomeAppbar extends StatelessWidget {
  const GHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(UserController());
    return GAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            GText.homeAppBarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(color: GColors.grey),
          ),
          Obx(
            (){
              if (controller.ProfilLodding.value){
              return const GShimmerEffect(width: 80,hight: 15,);
              }else{
                 return Text(
              controller.user.value.fullName,
              style: Theme.of(context).textTheme.headlineSmall!
                  .apply(color: GColors.white),
            );
              }
            }
           
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
