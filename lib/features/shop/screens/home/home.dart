import 'package:ecommerce_app/common/widgets/products_cart/products_cards/product_card_vertical.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_conatiner.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --Header --
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar --
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Searchbar --
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Categories --
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// --  Heading
                        const TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),

                        const SizedBox(height: TSizes.spaceBtwItems),

                        ///  vertical Image and Text in circle
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                return const THomeCategories();
                              }),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body ---

            Padding(
              padding: const EdgeInsets.all(TSizes.sm),
              child: Column(
                children: [
                  const TPromoSlider(banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///-- Popular Products --

                  /// Heading
                  TSectionHeading(title: 'Popular Products', onPressed: (){},),

                  /// use Vertical_cards using GridView.builder method for Popular Products
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) =>
                  const TProductCardVertical(),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


