import 'package:equatable/equatable.dart';

class ReunionEntity extends Equatable {
  final int id;
  final String heurD;
  final String heurF;
  final String date;
  final String titre;
  final String description;

  const ReunionEntity({
    required this.id,
    required this.heurD,
    required this.heurF,
    required this.date,
    required this.titre,
    required this.description,
  });

  @override
  List<Object?> get props => [];
}
