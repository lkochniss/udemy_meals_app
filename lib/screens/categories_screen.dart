import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../dummy-data.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'DeliMeal',
      )),
      body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: DUMMY_CATEGORIES.map((category) {
            return CategoryItem(
              id: category.id,
              title: category.title,
              color: category.color,
            );
          }).toList()),
    );
  }
}