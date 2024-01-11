import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  /// A Custom Circular Icon widget with a background color.

  /// Properties are:
  /// Container [width], [height], & [backgroundColor].

  /// Icon's [size],[color] & [onPressed]
  const TCircularIcon({
    super.key,

    this.width,
    this.height,
    this.size = TSizes.lg,
    this.color,
    this.backgroundColor,
    this.onPressed,
    required this.icon,
  });


  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(

        color: backgroundColor != null
          ? backgroundColor!
          : THelperFunctions.isDarkMode(context)
             ? TColors.black.withOpacity(0.11)
             : TColors.white.withOpacity(0.11),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon,size:size, color: color),
      ),
    );
  }
}
