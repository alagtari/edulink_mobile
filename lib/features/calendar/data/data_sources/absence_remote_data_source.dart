import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/calendar/data/models/absence_model.dart';

abstract class AbsenceOnlineDataSource {
  Future<ResponseWrapper<List<AbsenceModel>>> getAbsences();
}

class AbsenceOnlineDataSourceImpl implements AbsenceOnlineDataSource {
  @override
  Future<ResponseWrapper<List<AbsenceModel>>> getAbsences() async {
    final res = await sl<Dio>().get("/absences/index");

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<AbsenceModel>>.fromJson(true, res.data,
            (p0) {
          List<AbsenceModel> exercices = [];
          for (var exercice in (p0 as List)) {
            try {
              exercices.add(AbsenceModel.fromJson(exercice));
            } catch (e) {
              continue;
            }
          }
          return exercices;
        });
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }
}
