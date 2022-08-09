import 'package:chembuzz/home/category_section.dart';
import 'package:chembuzz/providers/categories_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Homepage extends ConsumerWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, Ref) {
    final categories = Ref.read(CategoriesProvider);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(children: const [
            Text(
              'Chem',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 90, 51, 156)),
            ),
            Text(
              'BUZZ',
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
            )
          ]),
        ),
        body: Column(
          children: [CategorySection(category: categories)],
        ));
  }
}
