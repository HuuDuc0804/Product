import 'package:flutter/material.dart';
import 'package:product/data/model/category.dart';
import 'package:product/data/seed/data.dart';
import 'package:product/screen/detail/detail_page.dart';
import 'package:product/utils/style.dart';

import '../../utils/colors.dart';
import 'widget/product.dart';
import 'widget/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          'Find Products',
          style: gilroyBold.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 12),
            const SearchWidget(),
            const SizedBox(height: 18),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                ),
                itemCount: Data.dataCategory.length,
                itemBuilder: (BuildContext context, int index) {
                  CategoryModel item = Data.dataCategory[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          item: item,
                        ),
                      ),
                    ),
                    child: ProductWidget(
                      item: item,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
