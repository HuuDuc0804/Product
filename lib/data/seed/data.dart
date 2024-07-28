import 'package:product/data/model/category.dart';
import 'package:product/utils/colors.dart';
import 'package:product/utils/images.dart';

class Data {
  Data._();
  static final dataCategory = [
    CategoryModel(
      img: AppImages.home1,
      title: 'Frash Fruits\n& Vegetable',
      color: AppColors.productColor1,
    ),
    CategoryModel(
      img: AppImages.home2,
      title: 'Cooking Oil\n& Ghee',
      color: AppColors.productColor2,
    ),
    CategoryModel(
      img: AppImages.home3,
      title: 'Meat & Fish',
      color: AppColors.productColor3,
    ),
    CategoryModel(
      img: AppImages.home4,
      title: 'Bakery & Snacks',
      color: AppColors.productColor4,
    ),
    CategoryModel(
      img: AppImages.home5,
      title:  'Dairy & Eggs',
      color: AppColors.productColor5,
    ),
    CategoryModel(
      img: AppImages.home6,
      title:  'Beverages',
      color: AppColors.productColor6,
    ),
    CategoryModel(
      img: AppImages.home1,
      title: 'Frash Fruits\n& Vegetable',
      color: AppColors.productColor7,
    ),
    CategoryModel(
      img: AppImages.home1,
      title: 'Frash Fruits\n& Vegetable',
      color: AppColors.productColor8,
    ),
  ];
}
