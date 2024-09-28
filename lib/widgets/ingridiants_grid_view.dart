import 'package:flutter/material.dart';

class IngredientsGridView extends StatelessWidget {
  const IngredientsGridView({super.key, required this.ingridants});
  final List<String> ingridants;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: List.generate(ingridants.length,
          (index) => CardOfingridant(text: ingridants[index])),
    );
  }
}

class CardOfingridant extends StatelessWidget {
  const CardOfingridant({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.grey),
      ),
      elevation: 5,
      color: const Color.fromARGB(255, 231, 34, 116),
      child: Center(
          child: Text(
        text,
        textAlign: TextAlign.center,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}
