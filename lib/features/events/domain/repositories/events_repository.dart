import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/events/data/models/event_model.dart';

abstract class EventsRepository {
  Future<Either<Failure, ResponseWrapper<List<EventModel>>>> getEvents();

}
