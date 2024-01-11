import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../icons/t_circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';
class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    /// Container with side padding, color, edges.radius and shadow.
    return GestureDetector(
      onTap:(){},
      child:Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),

        child: Column(
          children: [
            /// Thumbnail, WishList, Discount Tag
           TRoundedContainer(
            height: 180,
             padding: const EdgeInsets.all(TSizes.sm),
             backgroundColor: dark ? TColors.dark : TColors.light,
             child:  Stack(
               children: [
                 /// -- Thumbnail Image
                 const Padding(
                   padding: EdgeInsets.all(1),
                   child: TRoundedImage(imageUrl: TImages.productImage2,applyImageRadius:true ),
                 ),



                 /// -- Sale Tag
                 Positioned(
                   top: 3,
                   child: TRoundedContainer(
                     radius: TSizes.sm,
                     backgroundColor: TColors.secondaryColor.withOpacity(0.9),
                     padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                     child: Text('21%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                   ),
                 ),


                 /// -- Favourite Icon Button
                 const Positioned(
                   top: 0,
                     right: 0,
                     child: TCircularIcon(icon:Iconsax.heart5, color: Colors.red,))
               ],
             ),
           ),
            const SizedBox(height: TSizes.spaceBtwItems /2),

            /// -- Detail
             const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
                  child: SizedBox(
                    width: double.infinity,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(title: 'Natural Eucalyptus Oil',smallSize: true,),
                        SizedBox(height: TSizes.spaceBtwItems /2),
                        TBrandTitleWithVerifiedIcon(title: 'Yathaavat',),
                      ],
                    ),
                  ),
            ),

            // Todo: Add Spacer here to keep the height of each box same in case 1 or 2 lines of Heading
            const Spacer(),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '5.2',),
                ),

                /// Add to cart Button
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      )
                  ),
                  child: const SizedBox(
                      width: TSizes.iconLg*1.2,
                      height: TSizes.iconLg*1.2,
                      child: Center(child: Icon(Iconsax.add,color: TColors.white))),
                )
              ],)
          ],
        ),
      ),
    );
  }
}








