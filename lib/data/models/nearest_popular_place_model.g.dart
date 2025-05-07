// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearest_popular_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearestPopularPlaceModel _$NearestPopularPlaceModelFromJson(
  Map<String, dynamic> json,
) => NearestPopularPlaceModel(
  title: json['title'] as String,
  image: json['image'] as String,
  distance: (json['distance'] as num).toInt(),
);

Map<String, dynamic> _$NearestPopularPlaceModelToJson(
  NearestPopularPlaceModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'distance': instance.distance,
  'image': instance.image,
};
