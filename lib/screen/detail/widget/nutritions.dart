import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/style.dart';

class ProductNutritionsWidget extends StatelessWidget {
  const ProductNutritionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Nutritions',
            style: gilroyBold.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 1.1,
              color: AppColors.productText,
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 6,
                ),
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  '100gr',
                  style: gilroyMedium.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 9,
                    height: 1.5,
                    color: AppColors.productLightText,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () => debugPrint('onTab Next Nutritions'),
                child: SizedBox(
                  width: 9,
                  height: 14,
                  child: SvgPicture.asset(
                    AppImages.nextIcon,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}