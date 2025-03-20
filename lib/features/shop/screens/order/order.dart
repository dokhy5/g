import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppbar(
        title: Text('طلبات المتجر',style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,

      ),
      body: Padding(padding: const EdgeInsets.all(GSizes.defaultSpace),
       child:GOrderListItems(),
       ),
    );
  }
}
class GOrderListItems extends StatelessWidget {
  const GOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return  ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: GSizes.spaceBtwItems),
      itemCount: 7,
      itemBuilder: (_, index) =>  GRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(GSizes.md),
        backgroundColor: dark ? GColors.dark : GColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Iconsax.ship),
                const SizedBox(width: GSizes.spaceBtwItems/2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Prossing',style: Theme.of(context).textTheme.bodyLarge!.apply(color: GColors.primary,fontSizeDelta: 1)),
                      Text('09/09/2022',style: Theme.of(context).textTheme.headlineSmall),
                          
                    ],
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34,size: GSizes.iconSm,)),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwItems),
            Row(
              children: [
                        Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.tag),
                      const SizedBox(width: GSizes.spaceBtwItems/2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',style: Theme.of(context).textTheme.labelMedium),
                            Text('[#657348]',style: Theme.of(context).textTheme.titleMedium),
                                
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                       Expanded(
              child: Row(
                children: [
                  Icon(Iconsax.calendar),
                  const SizedBox(width: GSizes.spaceBtwItems/2),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shapping Date',style: Theme.of(context).textTheme.labelMedium),
                        Text('09/09/2022',style: Theme.of(context).textTheme.titleMedium),
                            
                      ],
                    ),
                  ),
                ],
              ),
            ),
        
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}