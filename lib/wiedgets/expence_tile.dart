import 'package:flutter/material.dart';
import 'package:myapp/models/expences.dart';
import 'package:intl/intl.dart'; // Run 'flutter pub add intl' for date formatting

class ExpenceTile extends StatelessWidget {
  const ExpenceTile({super.key, required this.expense});

  final ExpencesModel expense;

  // Helper to get icons based on category
  IconData get categoryIcon {
    switch (expense.category) {
      case Category.food:
        return Icons.lunch_dining;
      case Category.leasure:
        return Icons.movie;
      case Category.travel:
        return Icons.flight_takeoff;
      case Category.work:
        return Icons.work;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                // Clean currency look
                Text(
                  '\$${expense.mount.toStringAsFixed(2)}',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                // Icon and Date grouping
                Row(
                  children: [
                    Icon(categoryIcon, size: 20, color: Colors.blueGrey),
                    const SizedBox(width: 8),
                    Text(
                      DateFormat.yMMMd().format(expense.data), // Cleaner date
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
