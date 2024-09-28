import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text(
          'Recipe App',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        
      ),
    );
  }
}