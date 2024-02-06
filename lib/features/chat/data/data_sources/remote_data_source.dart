import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/chat/data/models/message_model.dart';
import 'package:edulink_mobile/features/chat/data/models/room_model.dart';

abstract class ChatOnlineDataSource {
  Future<ResponseWrapper<List<RoomModel>>> getRooms();
  Future<ResponseWrapper<List<MessageModel>>> getMessages(
      {required int id, required bool isAdmin});
  Future<Unit> sendMessage(
      {required int id, required String role, required String message});
}

class ChatOnlineDataSourceImpl implements ChatOnlineDataSource {
  @override
  Future<ResponseWrapper<List<RoomModel>>> getRooms() async {
    final res = await sl<Dio>().get(
      "/professeurs/index",
    );

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<RoomModel>>.fromJson(true, res.data, (p0) {
          List<RoomModel> rooms = [];
          for (var room in (p0 as List)) {
            try {
              rooms.add(RoomModel.fromJson(room));
            } catch (e) {
              continue;
            }
          }
          return rooms;
        });
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }

  @override
  Future<ResponseWrapper<List<MessageModel>>> getMessages(
      {required int id, required bool isAdmin}) async {
    final res = await sl<Dio>().post("/discussion/parent/messageList/$id",
        data: isAdmin ? {"role": "admin"} : {});

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<MessageModel>>.fromJson(
            true, {"payload": res.data['messages']}, (p0) {
          List<MessageModel> messages = [];
          for (var message in (p0 as List)) {
            try {
              messages.add(MessageModel.fromJson(message));
            } catch (e) {
              continue;
            }
          }
          return messages;
        });
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }

  @override
  Future<Unit> sendMessage(
      {required int id, required String role, required String message}) async {
    final res = await sl<Dio>().post("/discussion/parent/message/$id",
        data: {"role": role, "message": message});
    if (res.statusCode == 200) {
      try {
        return unit;
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }
}
