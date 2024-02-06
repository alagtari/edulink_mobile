import 'package:equatable/equatable.dart';

class RoomEntity extends Equatable {
  final int id;
  final String nom;
  final String prenom;
  final String role;

  const RoomEntity(
      {required this.id,
      required this.nom,
      required this.prenom,
      required this.role});

  @override
  List<Object?> get props => [];
}
