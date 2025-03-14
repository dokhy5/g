import 'package:flutter/material.dart';
import 'package:g/common/widgets/products/pruduct_cards/pruduct_card_vertical.dart';
import 'package:g/utils/constants/sizes.dart';

class GGridLoyout extends StatelessWidget {
  const GGridLoyout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent=288,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext context, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: GSizes.gridViewSpacing,
        crossAxisSpacing: GSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
        crossAxisCount: 2,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
