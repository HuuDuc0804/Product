import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:product/utils/colors.dart';

import '../../../utils/images.dart';
import '../../../utils/style.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;
  const SearchWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.bgImageDetail,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 18.2,
            height: 18.4,
            child: SvgPicture.asset(
              AppImages.searchIcon,
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search Store',
                hintStyle: gilroyMedium.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.productLightText,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                  ),
                ),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
