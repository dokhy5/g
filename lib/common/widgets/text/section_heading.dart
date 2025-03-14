import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class GSectionHeading extends StatelessWidget {
  const GSectionHeading({
    super.key,
    required this.title ,
    this.buttonTitle = 'عرض الكل',
    this.onPressed,
    this.textColor,
    this.showActionButton = true, this.textAlign=TextAlign.right,
  });
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  final Color? textColor;
  final TextAlign? textAlign ;

  @override
  Widget build(BuildContext context) {
    final dark=GHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (showActionButton)
          TextButton(onPressed: () {}, child: Text(buttonTitle,style:TextStyle(color: dark ? GColors.white : GColors.black),)),
        Text(

          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color:textColor ),
          maxLines: 1,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
        ),
        
      ],
    );
  }
}
