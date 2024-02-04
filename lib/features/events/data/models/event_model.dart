import 'package:edulink_mobile/features/events/domain/entities/event_entity.dart';

class EventModel extends EventEntity {
  const EventModel({
    required super.id,
    required super.titre,
    required super.frais,
    required super.description,
    required super.adresse,
    required super.image,
    required super.dateHeur,
    required super.organisationId,
    required super.paid,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      titre: json['titre'],
      frais: json['frais'].toDouble(),
      description: json['description'],
      adresse: json['adresse'],
      image: json['image'],
      dateHeur: DateTime.parse(json['dateHeur']),
      organisationId: json['organisation_id'],
      paid: json['paid'],
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
      'dateHeur': dateHeur.toIso8601String(),
      'organisation_id': organisationId,
      'paid': paid,
    };
  }
}
