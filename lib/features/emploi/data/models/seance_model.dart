import 'package:edulink_mobile/features/emploi/domain/entities/seance_entity.dart';

class SeanceModel extends SeanceEntity {
  const SeanceModel({
    required super.id,
    required super.heurDebut,
    required super.heurFin,
    required super.jour,
    required super.salle,
    required super.typeCours,
    required super.matiere,
    required super.classeId,
    required super.professeurId,
  });

  factory SeanceModel.fromJson(Map<String, dynamic> json) {
    return SeanceModel(
      id: json['id'],
      heurDebut: json['heurDebut'],
      heurFin: json['heurFin'],
      jour: json['jour'],
      salle: json['salle'],
      typeCours: json['typeCours'],
      matiere: json['matiere'],
      classeId: json['classe_id'],
      professeurId: json['professeur_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'heurDebut': heurDebut,
      'heurFin': heurFin,
      'jour': jour,
      'salle': salle,
      'typeCours': typeCours,
      'matiere': matiere,
      'classe_id': classeId,
      'professeur_id': professeurId,
    };
  }
}
