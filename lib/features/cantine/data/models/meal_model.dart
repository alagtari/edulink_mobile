import 'package:edulink_mobile/features/cantine/domain/entities/meal_entity.dart';

class MealModel extends MealEntity {
  const MealModel({
    required super.titre,
    required super.heur,
    required super.heurF,
    required super.description,
    required super.date,
    required super.id,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      titre: json['titre'],
      heur: json['heur'],
      heurF: json['heurF'],
      description: json['description'],
      date: json['date'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'titre': titre,
      'heur': heur,
      'heurF': heurF,
      'description': description,
      'date': date,
      'id': id,
    };
  }
}
