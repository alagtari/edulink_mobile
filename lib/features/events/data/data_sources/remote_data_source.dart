import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/events/data/models/event_model.dart';

abstract class EventOnlineDataSource {
  Future<ResponseWrapper<List<EventModel>>> getEvents();
}

class EventOnlineDataSourceImpl implements EventOnlineDataSource {
  @override
  Future<ResponseWrapper<List<EventModel>>> getEvents() async {
    final res = await sl<Dio>().get(
      "/factures/viewFactureParent",
    );

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<EventModel>>.fromJson(
            true, {'payload': res.data['eventRegistrations']}, (p0) {
          List<EventModel> events = [];
          for (var event in (p0 as List)) {
            try {
              events.add(EventModel.fromJson(event));
            } catch (e) {
              continue;
            }
          }
          return events;
        });
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }
}
