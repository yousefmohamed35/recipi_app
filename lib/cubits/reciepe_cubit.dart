import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recpiapp/models/reciepe_model.dart';
import 'package:recpiapp/services/recipe_serveices.dart';

class ReciepeCubit extends Cubit<List<ReciepeModel>> {
  ReciepeCubit() : super([]) {
    fetchReciepe();
  }
  final service = RecipeServeices();

  void fetchReciepe() async {
    try {
      final result = await service.getRecipe();
      emit(result);
    } catch (e) {
      log(e.toString());
    }
  }
}
