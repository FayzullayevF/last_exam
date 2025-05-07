import 'package:exam/core/client.dart';
import 'package:exam/data/models/home_model.dart';

class HomeRepository{
  final ApiClient client;
   List<HomeModel>? model;
  HomeRepository({required this.client});
  Future<List<HomeModel>> fetchItems() async{
    var rawItem = await client.fetchItems();
    model = rawItem.map((e)=> HomeModel.fromJson(e)).toList();
    return model!;
  }
}