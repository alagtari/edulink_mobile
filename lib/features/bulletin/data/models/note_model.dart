import 'package:edulink_mobile/features/bulletin/domain/entities/note_entity.dart';

class NoteModel extends NoteEntity {
  const NoteModel({
    required super.oral,
    required super.controle,
    required super.examen,
    required super.moyenne,
    required super.commentaires,
    required super.matiere,
  });

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      oral: int.parse(json['oral']),
      controle: int.parse(json['controle']),
      examen: int.parse(json['examen']),
      moyenne: json['moyenne'] is double
          ? json['moyenne']
          : double.parse(json['moyenne'].toString()),
      commentaires: json['commentaires'],
      matiere: json['matiere'],
    );
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
