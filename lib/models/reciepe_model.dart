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
}
