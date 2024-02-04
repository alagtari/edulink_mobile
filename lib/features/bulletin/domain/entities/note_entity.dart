import 'package:equatable/equatable.dart';

class NoteEntity extends Equatable {
  final int oral;
  final int controle;
  final int examen;
  final String commentaires;
  final double note;
  final String matiere;

  const NoteEntity({
    required this.oral,
    required this.controle,
    required this.examen,
    required this.commentaires,
    required this.note,
    required this.matiere,
  });

  @override
  List<Object?> get props => [];
}
