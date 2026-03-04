import 'package:flutter/material.dart';
import 'package:myapp/models/expences.dart';
import 'package:myapp/wiedgets/expence_list.dart';

class Expences extends StatelessWidget {
  Expences({super.key});

  final List<ExpencesModel> _expencesList = [
    ExpencesModel(
      title: "Football",
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
      title: "Laptop Bag",
      mount: 20,
      data: DateTime.now(),
      category: Category.travel,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false, // Modern look aligns title to left
        title: const Text(
          "Expense Tracker",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          // You could add a Summary Chart widget here later!
          ExpenceList(expenceList: _expencesList),
        ],
      ),
    );
  }
}