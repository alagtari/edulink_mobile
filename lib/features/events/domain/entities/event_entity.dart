import 'package:equatable/equatable.dart';

class EventEntity extends Equatable {
  final int id;
  final String titre;
  final double frais;
  final String description;
  final String adresse;
  final String image;
  final DateTime dateHeur;
  final int organisationId;
  final bool paid;

  const EventEntity({
    required this.id,
    required this.titre,
    required this.frais,
    required this.description,
    required this.adresse,
    required this.image,
    required this.dateHeur,
    required this.organisationId,
    required this.paid,
  });

  @override
  List<Object?> get props => [];
}
