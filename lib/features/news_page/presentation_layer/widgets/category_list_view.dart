import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, });
  final List<String> categoryList = const [
    'General',
    'Entertainment',
    'Technology',
    'Sport',
    'Business',
    'Health',
    'Science',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        //physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categoryList[index],);
        },
      ),
    );
  }
}