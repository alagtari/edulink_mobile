import 'package:edulink_mobile/features/bulletin/domain/entities/note_entity.dart';

class NoteModel extends NoteEntity {
  const NoteModel({
    required super.oral,
    required super.controle,
    required super.examen,
    required super.commentaires,
    required super.note,
    required super.matiere,
  });

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      oral: int.parse(json['oral']),
      controle: int.parse(json['controle']),
      examen: int.parse(json['examen']),
      commentaires: json['commentaires'],
      note: (int.parse(json['oral']) + int.parse(json['oral'])) / 2,
      matiere: json['matiere'],
    );
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
