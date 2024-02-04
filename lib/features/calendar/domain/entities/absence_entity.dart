import 'package:equatable/equatable.dart';

class AbsenceEntity extends Equatable {
  final int id;
  final String heurD;
  final String heurF;
  final String date;
  final String matiere;

  const AbsenceEntity({
    required this.id,
    required this.heurF,
    required this.date,
    required this.heurD,
    required this.matiere,
  });

  @override
  List<Object?> get props => [];
}
