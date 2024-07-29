import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/style.dart';

class ProductPriceWidget extends StatefulWidget {
  const ProductPriceWidget({
    super.key,
  });

  @override
  State<ProductPriceWidget> createState() => _ProductPriceWidgetState();
}

class _ProductPriceWidgetState extends State<ProductPriceWidget> {
  int _counter = 1;
  double _unitPrice = 4.99;
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
              IconButton(
                onPressed: () => setState(() {
                  if (_counter == 1) {
                    return;
                  }
                  _counter--;
                }),
                icon: SizedBox(
                  width: 17,
                  height: 17,
                  child: SvgPicture.asset(
                    AppImages.subIcon,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.lightGrey),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Text(
                  '$_counter',
                  style: gilroyBold.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    height: 1,
                    color: AppColors.productText,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => setState(() {
                  _counter++;
                }),
                icon: SizedBox(
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
            '\$${(_unitPrice * _counter).toStringAsFixed(2)}',
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
