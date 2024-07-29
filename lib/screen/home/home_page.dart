import 'package:flutter/material.dart';
import 'package:product/data/model/category.dart';
import 'package:product/data/seed/data.dart';
import 'package:product/screen/detail/detail_page.dart';
import 'package:product/utils/style.dart';

import '../../utils/colors.dart';
import 'widget/product.dart';
import 'widget/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  List<CategoryModel> listCategory = Data.dataCategory;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        listCategory = Data.dataCategory
            .where((item) => item.title
                .toLowerCase()
                .contains(controller.text.toLowerCase()))
            .toList();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
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
            SearchWidget(
              controller: controller,
            ),
            const SizedBox(height: 18),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                ),
                itemCount: listCategory.length,
                itemBuilder: (BuildContext context, int index) {
                  CategoryModel item = listCategory[index];
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
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
