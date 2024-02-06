import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/chat/data/models/message_model.dart';
import 'package:edulink_mobile/features/chat/data/models/room_model.dart';

abstract class ChatRepository {
  Future<Either<Failure, ResponseWrapper<List<RoomModel>>>> getRooms();
  Future<Either<Failure, ResponseWrapper<List<MessageModel>>>> getMeaages(
      {required int id, required bool isAdmin});
  Future<Either<Failure, Unit>> sendMessage(
      {required int id, required String role, required String message});
}
