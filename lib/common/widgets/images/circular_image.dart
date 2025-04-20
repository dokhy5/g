import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:g/common/widgets/shimmer/shimmer_effect.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shimmer/shimmer.dart';

class GCircularImage extends StatelessWidget {
  const GCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = GSizes.sm, this.overlayColor,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? backgroundColor;
  final double width, height, padding;
      final Color? overlayColor;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? Colors.black : Colors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
          child: isNetworkImage
          ?CachedNetworkImage(imageUrl: image,
          fit:fit,
          color:  overlayColor,
          progressIndicatorBuilder: (context, url, downloadProgress) => const GShimmerEffect(width: 55,hight: 55,radius: 55,),
          errorWidget: (context, url, error) => const Icon(Icons.error ,),
          )
          
          :Image(
            fit: fit,
            image: AssetImage(image),
                
                    color: overlayColor,
          ),
        ),
      ),
    );
  }
}
