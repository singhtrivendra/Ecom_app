import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If we want to add the background color to tabs you have to wrap them in material widget.
  ///  To do that we need [PreferredSized] Widget and that's why we created custom class.[PreferredSizeWidget].
  const TTabBar({super.key, required this.tabs,});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black :TColors.white ,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        unselectedLabelColor: TColors.darkerGrey,
        indicatorColor:TColors.primaryColor ,
        labelColor: dark ? TColors.white : TColors.primaryColor,

      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}