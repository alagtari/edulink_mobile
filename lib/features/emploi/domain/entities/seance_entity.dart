import 'package:equatable/equatable.dart';

class SeanceEntity extends Equatable {
  final int id;
  final String heurDebut;
  final String heurFin;
  final String jour;
  final String salle;
  final String typeCours;
  final String matiere;
  final int classeId;
  final int professeurId;

  const SeanceEntity({
    required this.id,
    required this.heurDebut,
    required this.heurFin,
    required this.jour,
    required this.salle,
    required this.typeCours,
    required this.matiere,
    required this.classeId,
    required this.professeurId,
  });

  factory SeanceEntity.fromJson(Map<String, dynamic> json) {
    return SeanceEntity(
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

  @override
  List<Object?> get props => [];
}
