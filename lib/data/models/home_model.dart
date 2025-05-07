
import 'package:exam/data/models/nearest_popular_place_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'home_model.g.dart';

@JsonSerializable()

class HomeModel {
  final int id;
  final String category;
  final String image;
  final int price;
  final String currency;
  final double area;
  final int numOfRooms;
  final int totalFloors;
  final int floor;
  final NearestPopularPlaceModel nearestPopularPlace;

  HomeModel({
    required this.id,
    required this.category,
    required this.image,
    required this.price,
    required this.currency,
    required this.area,
    required this.numOfRooms,
    required this.totalFloors,
    required this.floor,
    required this.nearestPopularPlace
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);
  Map<String, dynamic>toJson() => _$HomeModelToJson(this);
}