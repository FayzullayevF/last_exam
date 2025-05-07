import 'package:dio/dio.dart';

class ApiClient {
  final dio = Dio(BaseOptions(baseUrl: "http://192.168.9.174:8888/api/v1"));

  Future<List<dynamic>> fetchItems() async {
    final response = await dio.get('/real-estates');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Data did not come");
    }
  }
}
