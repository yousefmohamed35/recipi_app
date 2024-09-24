import 'package:dio/dio.dart';

class RecipeServeices {
  final dio = Dio();
  void getRecipe() async {
    final response = await dio.get('https://dummyjson.com/recipes');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> reciepesJson = jsonData["recipes"];
    print(reciepesJson);
  }
}
