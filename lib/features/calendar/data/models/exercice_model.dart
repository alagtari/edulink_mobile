import 'package:edulink_mobile/features/calendar/domain/entities/exercice_entity.dart';

class ExerciceModel extends ExerciceEntity {
  const ExerciceModel({
    required super.id,
    required super.dateL,
    required super.heurL,
    required super.date,
    required super.heur,
    required super.image,
    required super.description,
    required super.matiere,
  });

  factory ExerciceModel.fromJson(Map<String, dynamic> json) {
    return ExerciceModel(
      id: json['id'],
      dateL: json['dateL'],
      heurL: json['heurL'],
      date: json['date'],
      heur: json['heur'],
      image: json['image'],
      description: json['description'],
      matiere: json['matiere'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dateL': dateL,
      'heurL': heurL,
      'date': date,
      'heur': heur,
      'image': image,
      'description': description,
      'matiere': matiere,
    };
  }
}
