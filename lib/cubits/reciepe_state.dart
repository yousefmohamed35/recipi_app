import 'package:recpiapp/models/reciepe_model.dart';

abstract class ReciepeState {}

class ReciepeInitial extends ReciepeState {}

class ReciepeLoading extends ReciepeState {}

class ReciepeLoaded extends ReciepeState {
  final List<ReciepeModel> recipes;

  ReciepeLoaded({required this.recipes});
}

class ReciepeError extends ReciepeState {
  final String message;

  ReciepeError({required this.message});
}
