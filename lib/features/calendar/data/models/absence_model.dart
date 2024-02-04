import 'package:edulink_mobile/features/calendar/domain/entities/absence_entity.dart';

class AbsenceModel extends AbsenceEntity {
  const AbsenceModel({
    required super.id,
    required super.heurF,
    required super.date,
    required super.heurD,
    required super.matiere,
  });

  factory AbsenceModel.fromJson(Map<String, dynamic> json) {
    return AbsenceModel(
      id: json['id'],
      heurF: json['heurF'],
      date: json['date'],
      heurD: json['heurD'],
      matiere: json['matiere'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'heurF': heurF,
      'date': date,
      'heurD': heurD,
      'matiere': matiere,
    };
  }
}
