import 'package:flutter/material.dart';
import 'package:g/features/shop/screens/cart/cart.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GCartCounterIcon extends StatelessWidget {
  const GCartCounterIcon({
    super.key, required this.onPressed, this.iconColor, 
  });
  final VoidCallback onPressed;
final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
    IconButton(onPressed: ()=> Get.to(()=>CartScreen()), icon: Icon(Iconsax.shopping_bag,color:iconColor,)),
    Positioned(right: 0,child:Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        color: GColors.black,
        borderRadius: BorderRadius.circular(100),
    
      ),
      child: Center(
        child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: GColors.white,fontSizeFactor: .8),),
      ) 
    ) )
    ],);
  }
}
