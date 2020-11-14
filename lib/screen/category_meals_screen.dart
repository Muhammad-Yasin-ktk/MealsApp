import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categorymealscreen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
      body: Container(
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
