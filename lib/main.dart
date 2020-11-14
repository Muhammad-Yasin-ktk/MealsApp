import 'package:flutter/material.dart';
import 'package:meals_app/screen/category_meals_screen.dart';
import 'package:meals_app/screen/category_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/':(ctx)=>CategoryScreen(),
        CategoryMealsScreen.routeName:(ctx)=>CategoryMealsScreen(),
      },
    );
  }
}
