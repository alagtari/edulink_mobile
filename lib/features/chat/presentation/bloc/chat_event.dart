part of 'chat_bloc.dart';

@immutable
abstract class ChatEvent {
  const ChatEvent();
}

class GetRoomsEvent extends ChatEvent {}

class GetMessagesEvent extends ChatEvent {
  final int id;
  final bool isAdmin;

  const GetMessagesEvent({required this.id, required this.isAdmin});
}

class SendMessageEvent extends ChatEvent {
  final int id;
  final String role;
  final String message;

  const SendMessageEvent({
    required this.role,
    required this.message,
    required this.id,
  });
}
