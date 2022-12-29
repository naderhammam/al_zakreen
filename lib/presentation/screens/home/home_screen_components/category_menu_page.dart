import 'package:flutter/material.dart';

class CategoryMenuPage extends StatelessWidget {
  const CategoryMenuPage({Key? key, required TickerFuture Function()
  onCategoryTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Category Menu Page'));
  }
}
