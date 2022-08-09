import 'package:chembuzz/data/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final CategoriesProvider = FutureProvider((ref) async {
  return ref.read(repoprovider).getdata();
});
