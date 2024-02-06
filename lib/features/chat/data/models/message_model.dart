import 'package:edulink_mobile/features/chat/domain/entities/message_entity.dart';

class MessageModel extends MessageEntity {
  const MessageModel(
      {required super.message, required super.type, required super.createdAt});

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    if (json['timestamp'] != null) {
      json['created_at'] = json['timestamp'];
    }
    return MessageModel(
      message: json['message'],
      type: json['type'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'message': message, 'created_at': createdAt};
  }
}
