import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/images.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SizedBox(
            width: 10,
            height: 18,
            child: SvgPicture.asset(
              AppImages.backArrowIcon,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () => debugPrint('onTab Share'),
          icon: SizedBox(
            width: 20,
            height: 20,
            child: SvgPicture.asset(
              AppImages.shareIcon,
            ),
          ),
        ),
      ],
    );
  }
}
