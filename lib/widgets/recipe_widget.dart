import 'package:flutter/material.dart';
import 'package:recpiapp/models/reciepe_model.dart';
import 'package:recpiapp/screens/details_screen.dart';

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({super.key, required this.reciepeModel});
  final ReciepeModel reciepeModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the RecipeDetails screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(reciepeModel: reciepeModel),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 8,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                reciepeModel.image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.7),
                ),
                child: Row(
                  children: [
                    Text(
                      '${reciepeModel.rating}  ',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(reciepeModel.name,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(height: 4),
                  Text('${reciepeModel.ingredients.length} ingredients',
                      style: const TextStyle(fontSize: 14, color: Colors.white))
                ],
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Text(
                '${reciepeModel.colories} kcal',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 32,
                ))
          ],
        ),
      ),
    );
  }
}
