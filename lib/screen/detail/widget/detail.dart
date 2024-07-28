import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/style.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 18),
            child: Text(
              'Product Detail',
              style: gilroyBold.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 1.1,
                color: AppColors.productText,
              ),
            ),
          ),
          Text(
            'Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healtful And Varied Diet.',
            style: gilroyMedium.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              height: 1.6,
              color: AppColors.productLightText,
            ),
          ),
        ],
      ),
    );
  }
}