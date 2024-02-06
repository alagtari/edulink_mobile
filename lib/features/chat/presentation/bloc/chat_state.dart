part of 'chat_bloc.dart';

@immutable
abstract class ChatState {
  const ChatState();
}

class AuthInitial extends ChatState {}

class GetRoomsLoading extends ChatState {}

class GetRoomsSuccess extends ChatState {
  final List<RoomModel> rooms;

  const GetRoomsSuccess({
    required this.rooms,
  });
}

class GetRoomsFailed extends ChatState {}

class GetMessagesLoading extends ChatState {}

class GetMessagesSuccess extends ChatState {
  final List<MessageModel> messages;

  const GetMessagesSuccess({
    required this.messages,
  });
}

class GetMessagesFailed extends ChatState {}



class SendMessageLoading extends ChatState {}

class SendMessageSuccess extends ChatState {}

class SendMessageFailed extends ChatState {}
