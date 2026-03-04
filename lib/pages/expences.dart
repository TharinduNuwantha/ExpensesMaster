import 'package:flutter/material.dart';
import 'package:myapp/models/expences.dart';

class Expences extends StatelessWidget {
  Expences({super.key});

  final List<ExpencesModel> _expencesList = [
    ExpencesModel(
      title: "FootBall",
      mount: 12.5,
      data: DateTime.now(),
      category: Category.leasure,
    ),
    ExpencesModel(
      title: "Carrot",
      mount: 10,
      data: DateTime.now(),
      category: Category.food,
    ),
    ExpencesModel(
      title: "Bag",
      mount: 20,
      data: DateTime.now(),
      category: Category.travel,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expence Master"),
        backgroundColor: const Color.fromARGB(248, 213, 188, 23),
        actions: [
          Container(
            color: const Color.fromARGB(248, 26, 26, 26),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Color.fromARGB(248, 213, 188, 23),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(_expencesList[index].title);
              },
            ),
          ),
        ],
      ),
    );
  }
}
