import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/chat/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/chat/data/models/message_model.dart';
import 'package:edulink_mobile/features/chat/data/models/room_model.dart';
import 'package:edulink_mobile/features/chat/domain/repositories/chat_repository.dart';
import 'package:edulink_mobile/features/club/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/club/data/models/club_model.dart';
import 'package:edulink_mobile/features/club/domain/repositories/clubs_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatOnlineDataSource dataSource;

  ChatRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<RoomModel>>>> getRooms() async {
    try {
      final res = await dataSource.getRooms();
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, ResponseWrapper<List<MessageModel>>>> getMeaages(
      {required int id, required bool isAdmin}) async {
    try {
      final res = await dataSource.getMessages(id: id, isAdmin: isAdmin);
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> sendMessage(
      {required int id, required String role, required String message}) async {
    try {
      final res = await dataSource.sendMessage(id: id, role: role,message:message);
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
