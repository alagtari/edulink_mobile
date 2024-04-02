import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/calendar/data/models/absence_model.dart';

abstract class AbsenceOnlineDataSource {
  Future<ResponseWrapper<List<AbsenceModel>>> getAbsences(
      {required String date});
}

class AbsenceOnlineDataSourceImpl implements AbsenceOnlineDataSource {
  @override
  Future<ResponseWrapper<List<AbsenceModel>>> getAbsences(
      {required String date}) async {
    final res = await sl<Dio>().get("/absences/index");

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<AbsenceModel>>.fromJson(true, res.data,
            (p0) {
          List<AbsenceModel> absences = [];
          AbsenceModel absenceModel;
          for (var absence in (p0 as List)) {
            try {
              absenceModel = AbsenceModel.fromJson(absence);
              if (absenceModel.date == date) {
                absences.add(absenceModel);
              }
            } catch (e) {
              continue;
            }
          }
          return absences;
        });
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }
}
