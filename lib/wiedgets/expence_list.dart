import 'package:flutter/material.dart';
import 'package:myapp/models/expences.dart';
import 'package:myapp/wiedgets/expence_tile.dart';

class ExpenceList extends StatelessWidget {
  const ExpenceList({super.key, required this.expenceList});
  final List<ExpencesModel> expenceList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 8), // Added breathing room
        itemCount: expenceList.length,
        itemBuilder: (context, index) {
          return ExpenceTile(expense: expenceList[index]);
        },
      ),
    );
  }
}