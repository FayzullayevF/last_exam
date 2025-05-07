import 'package:exam/data/models/nearest_popular_place_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'home_model.g.dart';
@JsonSerializable()
class HomeModel {
  final int id;
  final int price;
  final int numOfRooms;
  final int totalFloor;
  final int floor;
  final NearestPopularPlaceModel model;
  final String category;
  final String image;
  final String currency;
  final num area;

  HomeModel({
    required this.image,
    required this.price,
    required this.model,
    required this.id,
    required this.category,
    required this.area,
    required this.currency,
    required this.floor,
    required this.numOfRooms,
    required this.totalFloor,
  });
  factory HomeModel.fromJson(Map<String, dynamic> json)=> _$HomeModelFromJson(json);
}
