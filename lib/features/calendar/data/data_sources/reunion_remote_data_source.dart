import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/calendar/data/models/reunion_model.dart';

abstract class ReunionOnlineDataSource {
  Future<ResponseWrapper<List<ReunionModel>>> getReunions(
      {required String date});
}

class ReunionOnlineDataSourceImpl implements ReunionOnlineDataSource {
  @override
  Future<ResponseWrapper<List<ReunionModel>>> getReunions(
      {required String date}) async {
    final res = await sl<Dio>().get("/reunions/index", queryParameters: {
      'start_date': date,
      'end_date': date,
    });

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<ReunionModel>>.fromJson(
            true, {'payload': res.data['reunions']}, (p0) {
          List<ReunionModel> events = [];
          for (var event in (p0 as List)) {
            try {
              events.add(ReunionModel.fromJson(event));
            } catch (e) {
              continue;
            }
          }
          events.sort((a, b) => a.heurD.compareTo(b.heurD));
          return events;
        });
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }
}
