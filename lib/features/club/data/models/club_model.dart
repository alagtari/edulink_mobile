import 'package:edulink_mobile/features/club/domain/entities/club_entity.dart';

class ClubModel extends ClubEntity {
  const ClubModel({
    required super.id,
    required super.titre,
    required super.frais,
    required super.description,
    required super.adresse,
    required super.image,
    required super.organisationId,
    required super.jour,
    required super.heur,
  });

  factory ClubModel.fromJson(Map<String, dynamic> json) {
    return ClubModel(
      id: json['id'],
      titre: json['titre'],
      frais: json['frais'].toDouble(),
      description: json['description'],
      adresse: json['adresse'],
      image: json['image'],
      organisationId: json['organisation_id'],
      jour: json['jour'],
      heur: json['heur'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titre': titre,
      'frais': frais,
      'description': description,
      'adresse': adresse,
      'image': image,
      'organisation_id': organisationId,
      'jour': jour,
      'heur': heur,
    };
  }
}
