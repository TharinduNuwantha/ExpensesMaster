import 'package:uuid/uuid.dart';

final uuid = Uuid().v4();

enum Category { food, travel, leasure, work }

class ExpencesModel {
  ExpencesModel({
    required this.title,
    required this.mount,
    required this.data,
    required this.category,
  }) : id = uuid;

  final String id;
  final String title;
  final double mount;
  final DateTime data;
  final Category category;
}
