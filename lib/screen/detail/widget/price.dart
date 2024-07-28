import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/style.dart';

class ProductPriceWidget extends StatelessWidget {
  const ProductPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => debugPrint('onTab Decrement'),
                child: SizedBox(
                  width: 17,
                  height: 17,
                  child: SvgPicture.asset(
                    AppImages.subIcon,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.lightGrey),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Text(
                  '1',
                  style: gilroyBold.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    height: 1,
                    color: AppColors.productText,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => debugPrint('onTab Increment'),
                child: SizedBox(
                  width: 17,
                  height: 17,
                  child: SvgPicture.asset(
                    AppImages.addIcon,
                  ),
                ),
              ),
            ],
          ),
          Text(
            '\$4.99',
            style: gilroyBold.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              height: 0.8,
              letterSpacing: 0.1,
              color: AppColors.productText,
            ),
          ),
        ],
      ),
    );
  }
}
