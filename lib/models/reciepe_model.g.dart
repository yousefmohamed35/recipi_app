// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reciepe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReciepeModel _$ReciepeModelFromJson(Map<String, dynamic> json) => ReciepeModel(
      name: json['name'] as String,
      image: json['image'] as String,
      rating: (json['rating'] as num).toDouble(),
      colories: (json['colories'] as num).toInt(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ReciepeModelToJson(ReciepeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'rating': instance.rating,
      'colories': instance.colories,
      'ingredients': instance.ingredients,
    };
