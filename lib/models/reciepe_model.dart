import 'package:json_annotation/json_annotation.dart';
part 'reciepe_model.g.dart';

@JsonSerializable()
class ReciepeModel {
  final String name;
  final String image;
  final double rating;
  final int colories;
  final List<String> ingredients;

  ReciepeModel(
      {required this.name,
      required this.image,
      required this.rating,
      required this.colories,
      required this.ingredients});

  factory ReciepeModel.fromJson(Map<String, dynamic> json) =>
      _$ReciepeModelFromJson(json);
}
