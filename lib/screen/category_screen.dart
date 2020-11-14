import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/widget/category_items.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: DUMMY_DATA
            .map((dummyData) => CategoryItem(
                  id: dummyData.id,
                  title: dummyData.title,
                  color: dummyData.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20
        ),
      ),
    );
  }
}
