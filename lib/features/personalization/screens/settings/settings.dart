import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- Header
           TPrimaryHeaderContainer(
               child: Column(
                 children: [
                      TAppBar(
                        title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),
                        ),
                      ),
                   const SizedBox(height: TSizes.spaceBtwSections),

                   /// User
                 ],
               )
           ),
            /// --- Body
            
          ],
        ),
      ),
    );
  }
}
