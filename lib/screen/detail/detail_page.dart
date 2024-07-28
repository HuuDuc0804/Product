import 'package:flutter/material.dart';
import 'package:product/data/model/category.dart';
import 'package:product/utils/colors.dart';
import 'package:product/utils/style.dart';

import 'widget/appbar.dart';
import 'widget/detail.dart';
import 'widget/header.dart';
import 'widget/nutritions.dart';
import 'widget/price.dart';
import 'widget/review.dart';
import 'widget/title.dart';

class DetailPage extends StatelessWidget {
  final CategoryModel item;
  const DetailPage({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.bgImageDetail,
        title: const DetailAppBar(),
      ),
      body: Container(
        color: AppColors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderDetailWidget(
                size: size,
                color: item.color,
              ),
              const SizedBox(height: 25),
              const ProductTitleWidget(),
              const SizedBox(height: 20),
              const ProductPriceWidget(),
              const SizedBox(height: 25),
              dividerWidget(),
              const SizedBox(height: 14),
              const ProductDetailWidget(),
              const SizedBox(height: 18),
              dividerWidget(),
              const SizedBox(height: 18),
              const ProductNutritionsWidget(),
              const SizedBox(height: 18),
              dividerWidget(),
              const SizedBox(height: 18),
              const ProductReviewWidget(),
              const SizedBox(height: 18),
              buttonAddToBasket(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonAddToBasket(Size size) {
    return GestureDetector(
      onTap: () => debugPrint('onTab Add To Basket'),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        alignment: Alignment.center,
        height: 67,
        width: size.width,
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.circular(19),
        ),
        child: Text(
          'Add To Basket',
          style: gilroyMedium.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }

  Widget dividerWidget() {
    return Container(
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.lightGrey,
        ),
      ),
    );
  }
}
