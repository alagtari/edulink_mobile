import 'package:equatable/equatable.dart';

class MealEntity extends Equatable {
  final String titre;
  final String heur;
  final String heurF;
  final String description;
  final String date;
  final int id;

  const MealEntity({
    required this.titre,
    required this.heur,
    required this.heurF,
    required this.description,
    required this.date,
    required this.id,
  });

  @override
  List<Object?> get props => [];
}
