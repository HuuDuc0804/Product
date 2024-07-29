import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/style.dart';

class ProductTitleWidget extends StatelessWidget {
  const ProductTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(25, 0, 24.7, 8.9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Naturel Red Apple',
                style: gilroyBold.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  height: 0.8,
                  letterSpacing: 0.1,
                  color: AppColors.productText,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '1kg, Price',
                style: gilroyBold.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 1.1,
                  color: AppColors.productLightText,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () => debugPrint('onTab Like'),
            icon: SizedBox(
              width: 24,
              height: 24,
              child: SvgPicture.asset(
                AppImages.heartIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}