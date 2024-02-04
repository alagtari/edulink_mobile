import 'package:edulink_mobile/features/cantine/domain/entities/meal_entity.dart';

class MealModel extends MealEntity {
  const MealModel({
    required super.titre,
    required super.heur,
    required super.heurF,
    required super.description,
    required super.jour,
    required super.id,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      titre: json['titre'],
      heur: json['heur'],
      heurF: json['heurF'],
      description: json['description'],
      jour: json['jour'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'titre': titre,
      'heur': heur,
      'heurF': heurF,
      'description': description,
      'jour': jour,
      'id': id,
    };
  }
}
