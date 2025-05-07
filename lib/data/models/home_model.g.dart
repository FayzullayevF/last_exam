// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
  image: json['image'] as String,
  price: (json['price'] as num).toInt(),
  model: NearestPopularPlaceModel.fromJson(
    json['model'] as Map<String, dynamic>,
  ),
  id: (json['id'] as num).toInt(),
  category: json['category'] as String,
  area: json['area'] as num,
  currency: json['currency'] as String,
  floor: (json['floor'] as num).toInt(),
  numOfRooms: (json['numOfRooms'] as num).toInt(),
  totalFloor: (json['totalFloor'] as num).toInt(),
);

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'numOfRooms': instance.numOfRooms,
  'totalFloor': instance.totalFloor,
  'floor': instance.floor,
  'model': instance.model,
  'category': instance.category,
  'image': instance.image,
  'currency': instance.currency,
  'area': instance.area,
};
