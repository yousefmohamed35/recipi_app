import 'package:dio/dio.dart';
import 'package:recpiapp/models/reciepe_model.dart';

class RecipeServeices {
  final dio = Dio();
  Future<List<ReciepeModel>> getRecipe() async {
    final response = await dio.get('https://dummyjson.com/recipes');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> reciepesJson = jsonData["recipes"];
    List<ReciepeModel> reciepes = reciepesJson
        .map((json) => ReciepeModel.fromJson(json as Map<String, dynamic>))
        .toList();
    return reciepes;
  }
}
