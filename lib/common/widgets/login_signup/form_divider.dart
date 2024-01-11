import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
            child: Divider(

              /// problem while using dark
              //   color: dark ? TColors.darkGrey : TColors.grey,
                color: TColors.darkGrey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(TTexts.orSignInWith.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        const Flexible(
            child: Divider(

              /// problem while using dark
              //   color: dark ? TColors.darkGrey : TColors.grey,
                color: TColors.darkGrey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
