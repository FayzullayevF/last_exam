import 'package:dio/dio.dart';

class ApiClient {
  final dio = Dio(
    BaseOptions(baseUrl: "http://192.168.10.214:8888/api/v1"),
  );

  Future<Map<String, dynamic>> fetchItems() async {
    var response = await dio.get('/real-estates');
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      print("malumot keldi");
      return data;

    } else {
      throw Exception("Data did not come");
    }
  }
}
