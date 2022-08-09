import 'package:chembuzz/data/core/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Apiclient {
  Apiclient({required this.dio});
  final Dio dio;
  Future getdata({required String endpoint}) async {
    final resilt = await dio.get(endpoint);
    if (resilt.statusCode == 200) {
      return resilt.data;
    } else {
      Exception(resilt.statusMessage);
    }
  }
}

final ApiclientProvider = Provider<Apiclient>((ref) {
  return Apiclient(dio: ref.watch(Dioprovider));
});
final Dioprovider = Provider((ref) {
  return Dio(BaseOptions(baseUrl: config.baseurl));
});
