import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';

class HeaderDetailWidget extends StatelessWidget {
  final Size size;
  final Color color;
  const HeaderDetailWidget({
    super.key,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: const BoxDecoration(
        color: AppColors.bgImageDetail,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      ),
      child: Column(
        children: [
          Container(
            width: 329,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AppImages.detail,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 3,
            width: size.width,
            child: Center(
              child: SizedBox(
                width: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 5),
                      width: index == 0 ? 16 : 3,
                      height: 3,
                      decoration: BoxDecoration(
                        color: index == 0 ? color : AppColors.grey,
                        borderRadius: BorderRadius.circular(13),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
