import 'package:chembuzz/data/model/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key, required this.category}) : super(key: key);
  final AsyncValue<List<Categorymodel>> category;
  @override
  Widget build(BuildContext context) {
    return category.when(data: (data) {
      return Column(
        children: [
          ...data.map((e) => ListTile(
                leading: Text(e.id.toString()),
                title: Text(e.name.toString()),
              ))
        ],
      );
    }, error: (s, e) {
      return Text(e.toString());
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
