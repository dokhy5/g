import 'package:flutter/material.dart';

class GProductPriceText extends StatelessWidget {
  const GProductPriceText({
    super.key,
    this.currencySign =  'جم' ,
    required this.price,
     this.maxLine=1,
    this.isLarge = false,
    this.lineThrough = false,
  });
  final String currencySign, price;
  final int maxLine;
  final bool isLarge;
  final bool lineThrough;
  @override
  Widget build(BuildContext context) {
    return Text(
      price + currencySign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style:
          isLarge
              ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              )
              : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              ),
    );
  }
}
