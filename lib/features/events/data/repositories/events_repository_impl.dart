import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/events/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/events/data/models/event_model.dart';
import 'package:edulink_mobile/features/events/domain/repositories/events_repository.dart';

class EventsRepositoryImpl implements EventsRepository {
  final EventOnlineDataSource dataSource;

  EventsRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<EventModel>>>> getEvents() async {
    try {
      final res = await dataSource.getEvents();
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
