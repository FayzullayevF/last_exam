import 'package:exam/core/client.dart';
import 'package:exam/data/models/home_model.dart';

class HomeRepository{
  final ApiClient client;
   HomeModel? model;
  HomeRepository({required this.client});
  Future<HomeModel> fetchItems() async{
    var rawItem = await client.fetchItems();
    model = HomeModel.fromJson(rawItem);
    return model!;
  }
}