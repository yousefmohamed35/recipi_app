import 'package:flutter/material.dart';
import 'package:recpiapp/models/reciepe_model.dart';
import 'package:recpiapp/widgets/ingridiants_grid_view.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.reciepeModel});
  final ReciepeModel reciepeModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xffE23E3E),
                  Color(0xffFF6868),
                  Color(0xffFF8383),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
        ),
        title: Text(
          reciepeModel.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.network(
              reciepeModel.image,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      'Ingredients',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    IngredientsGridView(ingridants: reciepeModel.ingredients)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
