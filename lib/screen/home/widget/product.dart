import 'package:flutter/material.dart';
import 'package:product/utils/colors.dart';

import '../../../data/model/category.dart';
import '../../../utils/style.dart';

class ProductWidget extends StatelessWidget {
  final CategoryModel item;
  const ProductWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: item.color.withOpacity(0.7),
        ),
        borderRadius: BorderRadius.circular(18),
        color: item.color.withOpacity(0.1),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 76,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(item.img),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              margin: const EdgeInsets.only(left: 2),
              decoration: const BoxDecoration(
                border: Border(),
              ),
              child: Text(
                item.title,
                textAlign: TextAlign.center,
                style: gilroyBold.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.productText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
