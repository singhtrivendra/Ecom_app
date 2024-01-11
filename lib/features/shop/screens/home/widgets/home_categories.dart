import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TVerticalImageText(
      image: TImages.essentialOil1,
      title: 'Essential-oils',
      textColor: Colors.white,
      onTap: () {},
    );
  }
}
