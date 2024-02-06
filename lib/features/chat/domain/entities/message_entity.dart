import 'package:equatable/equatable.dart';

class MessageEntity extends Equatable {
 
  final String message;
  final String type;
  final DateTime createdAt;

  const MessageEntity({
   
    required this.message,
    required this.type,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [];
}
