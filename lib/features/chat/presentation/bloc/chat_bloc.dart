import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/common_used/app_prefs.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/chat/data/models/message_model.dart';
import 'package:edulink_mobile/features/chat/data/models/room_model.dart';
import 'package:edulink_mobile/features/chat/domain/repositories/chat_repository.dart';
import 'package:flutter/foundation.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final _repo = sl<ChatRepository>();
  final _prefs = sl<AppPrefs>();

  ChatBloc() : super(AuthInitial()) {
    on<GetRoomsEvent>(
      (event, emit) async {
        emit(GetRoomsLoading());
        final res = await _repo.getRooms();
        res.fold(
          (l) => emit(GetRoomsFailed()),
          (r) {
            emit(GetRoomsSuccess(rooms: r.payload!));
          },
        );
      },
    );
    on<GetMessagesEvent>(
      (event, emit) async {
        emit(GetMessagesLoading());
        final int? organisationId = _prefs.getOrganisationId();
        final int chatId = event.id == 0 ? (organisationId ?? 0) : event.id;
        final res = await _repo.getMeaages(id: chatId, isAdmin: event.isAdmin);
        res.fold(
          (l) => emit(GetMessagesFailed()),
          (r) {
            emit(GetMessagesSuccess(messages: r.payload!));
          },
        );
      },
    );

    on<SendMessageEvent>(
      (event, emit) async {
        // emit(SendMessageLoading());
        final int? organisationId = _prefs.getOrganisationId();
        final int chatId = event.id == 0 ? (organisationId ?? 0) : event.id;
        final res = await _repo.sendMessage(
            id: chatId, role: event.role, message: event.message);
        // res.fold(
        //   (l) => emit(SendMessageFailed()),
        //   (r) {
        //     emit(SendMessageSuccess());
        //   },
        // );
      },
    );
  }
}
