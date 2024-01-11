
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_conatiner.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products_cart/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../common/widgets/brands/t_brand_card.dart';


import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        ///--- Appbar
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(

            /// --- Header---
            headerSliverBuilder: (_, innerBoxScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// Search bar
                        const SizedBox(height: TSizes.sm),
                        const TSearchContainer(
                          text: 'Search in store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        ///Featured Brands
                        TSectionHeading(
                            title: 'Premium Brands', onPressed: () {}),
                        const SizedBox(height: TSizes.spaceBtwSections / 1.5),

                        /// Brands Grid

                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              // In the Backend we will pass the Each Brand and onPressed Event also.
                              return const TBrandCard(showBorder: false,);
                            })
                      ],
                    ),
                  ),

                  /// ---Tabs---
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Essential-oils')),
                      Tab(child: Text('HydroSols')),
                      Tab(child: Text('Herbs')),
                      Tab(child: Text('Petals')),
                      Tab(child: Text('Powder')),
                    ],
                  ),
                ),
              ];
            },

            /// ---Body---
            body:  const TabBarView(
              children: [TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab(),

              ],
            ),
        ),
      ),
    );
  }
}
