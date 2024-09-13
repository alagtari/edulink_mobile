import 'package:equatable/equatable.dart';

class ExerciceEntity extends Equatable {
  final int id;
  final String dateL;
  final String heurL;
  final String date;
  final String heur;
  final String image;
  final String description;
  final String matiere;
  final String? pdf;

  const ExerciceEntity({
    required this.id,
    required this.dateL,
    required this.heurL,
    required this.date,
    required this.heur,
    required this.image,
    required this.description,
    required this.matiere,
    required this.pdf,
  });

  @override
  List<Object?> get props => [];
}
