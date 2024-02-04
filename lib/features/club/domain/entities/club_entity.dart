import 'package:equatable/equatable.dart';

class ClubEntity extends Equatable {
  final int id;
  final String titre;
  final String jour;
  final String heur;
  final String adresse;
  final String image;
  final String description;
  final double frais;
  final int organisationId;

  const ClubEntity({
    required this.id,
    required this.titre,
    required this.frais,
    required this.description,
    required this.adresse,
    required this.image,
    required this.organisationId,
    required this.jour,
    required this.heur,
  });

  @override
  List<Object?> get props => [];
}
