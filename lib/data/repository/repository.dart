import 'package:chembuzz/data/core/api_client.dart';
import 'package:chembuzz/data/core/config.dart';
import 'package:chembuzz/data/model/category_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Repository {
  Repository({required this.client});
  final Apiclient client;
  Future<List<Categorymodel>> getdata() async {
    try {
      final output = await client.getdata(endpoint: config.categories);
      final List data = output[''];
      final List<Categorymodel> result =
          data.map((e) => Categorymodel.fromjson(e)).toList();
      return result;
    } on DioError {
      throw Exception('Try Again');
    }
  }
}

final repoprovider = Provider<Repository>((ref) {
  return Repository(client: ref.watch(ApiclientProvider));
});
