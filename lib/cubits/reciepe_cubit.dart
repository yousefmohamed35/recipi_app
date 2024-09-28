import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recpiapp/cubits/reciepe_state.dart';
import 'package:recpiapp/services/recipe_serveices.dart';

class ReciepeCubit extends Cubit<ReciepeState> {
  ReciepeCubit() : super(ReciepeInitial()) {
    fetchReciepe();
  }
  final service = RecipeServeices();

  void fetchReciepe() async {
    emit(ReciepeLoading());
    try {
      final result = await service.getRecipe();
      emit(ReciepeLoaded(recipes: result));
    } catch (e) {
      emit(ReciepeError(message: e.toString()));
    }
  }
}
