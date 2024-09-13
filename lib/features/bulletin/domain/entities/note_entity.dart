import 'package:equatable/equatable.dart';

class NoteEntity extends Equatable {
  final int oral;
  final int controle;
  final int examen;
  final String commentaires;
  final double moyenne;
  final String matiere;

  const NoteEntity({
    required this.oral,
    required this.controle,
    required this.examen,
    required this.commentaires,
    required this.moyenne,
    required this.matiere,
  });

  @override
  List<Object?> get props => [];
}
