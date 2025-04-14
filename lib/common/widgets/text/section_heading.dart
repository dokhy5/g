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
    this.showActionButton = true, this.textAlign=TextAlign.right, this.padding,
  });
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  final Color? textColor;
  final TextAlign? textAlign ;
  final EdgeInsetsGeometry?padding;

  @override
  Widget build(BuildContext context) {
    final dark=GHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding??EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Text(
      
            title,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color:textColor ),
            maxLines: 1,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(
              onPressed: onPressed,
              child: Text(
                buttonTitle,
                style: TextStyle(color: dark ? GColors.white : GColors.black),
              ),
            ),
        ],
      ),
    );
  }
}
