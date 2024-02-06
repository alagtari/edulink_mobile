import 'package:edulink_mobile/features/chat/domain/entities/room_entity.dart';

class RoomModel extends RoomEntity {
  const RoomModel(
      {required super.id,
      required super.nom,
      required super.prenom,
      required super.role});

  factory RoomModel.fromJson(Map<String, dynamic> json) {
    return RoomModel(
      id: json['id'],
      nom: json['nom'],
      prenom: json['prenom'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nom': nom,
      'prenom': prenom,
      'role': role,
    };
  }
}
