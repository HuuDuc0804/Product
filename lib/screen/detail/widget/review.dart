import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/style.dart';

class ProductReviewWidget extends StatelessWidget {
  const ProductReviewWidget({
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
            'Review',
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
                alignment: AlignmentDirectional.centerEnd,
                width: 160,
                height: 18,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 4),
                        width: 15,
                        height: 15,
                        child: SvgPicture.asset(
                          AppImages.starIcon,
                        ),
                      );
                    }),
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () => debugPrint('onTab Next Review'),
                icon: SizedBox(
                  width: 9,
                  height: 14,
                  child: SvgPicture.asset(
                    AppImages.nextIcon,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
