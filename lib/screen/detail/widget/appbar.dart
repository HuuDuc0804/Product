import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/images.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SizedBox(
              width: 10,
              height: 18,
              child: SvgPicture.asset(
                AppImages.backArrowIcon,
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => debugPrint('onTab Share'),
            child: SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                AppImages.shareIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
