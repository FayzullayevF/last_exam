import 'package:json_annotation/json_annotation.dart';
part 'nearest_popular_place_model.g.dart';

@JsonSerializable()
class NearestPopularPlaceModel {
  final String title;
  final int distance;
  final String image;

  NearestPopularPlaceModel({
    required this.title,
    required this.image,
    required this.distance,
  });

  factory NearestPopularPlaceModel.fromJson(Map<String, dynamic>json)=> _$NearestPopularPlaceModelFromJson(json);
  Map<String, dynamic>toJson()=> _$NearestPopularPlaceModelToJson(this);
}