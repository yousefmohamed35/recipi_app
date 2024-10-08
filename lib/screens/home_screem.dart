import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recpiapp/cubits/reciepe_cubit.dart';
import 'package:recpiapp/cubits/reciepe_state.dart';
import 'package:recpiapp/widgets/recipe_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: BlocBuilder<ReciepeCubit, ReciepeState>(builder: (context, state) {
        if (state is ReciepeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ReciepeError) {
          return Center(child: Text(state.message));
        } else if (state is ReciepeLoaded) {
          return ListView.builder(
            itemCount: state.recipes.length,
            itemBuilder: (context, index) {
              return RecipeWidget(reciepeModel: state.recipes[index]);
            },
          );
        } else {
          return const Center(child: Text('No Data'));
        }
      }),
    );
  }
}
