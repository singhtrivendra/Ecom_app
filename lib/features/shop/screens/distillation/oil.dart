import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter/material.dart';


import '../../../../common/widgets/custom_shapes/containers/search_conatiner.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class OdcScreen extends StatelessWidget {
  const OdcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(child: Column(
              children: [
                 TAppBar(
                  title:  Text('Oil distillation Centers',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),
                ),
                 ),
        const SizedBox(height: TSizes.sm),
                const TSearchContainer(text: 'Search for near by ODCs'),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
            )
          ],
        ) ,
      ),
    );
  }
}
