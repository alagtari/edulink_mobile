import 'package:edulink_mobile/features/calendar/domain/entities/reunion_entity.dart';

class ReunionModel extends ReunionEntity {
  const ReunionModel({
    required super.id,
    required super.heurD,
    required super.heurF,
    required super.date,
    required super.titre,
    required super.description,
  });

  factory ReunionModel.fromJson(Map<String, dynamic> json) {
    return ReunionModel(
      id: json['id'],
      heurD: json['heurD'],
      heurF: json['heurF'],
      date: json['date'],
      titre: json['titre'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'heurD': heurD,
      'heurF': heurF,
      'date': date,
      'titre': titre,
      'description': description,
    };
  }

  @override
  List<Object?> get props => [];
}
