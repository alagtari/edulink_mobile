import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/exercice/data/models/exercice_model.dart';

abstract class ExerciceOnlineDataSource {
  Future<ResponseWrapper<List<ExerciceModel>>> getExercices();
}

class ExerciceOnlineDataSourceImpl implements ExerciceOnlineDataSource {
  @override
  Future<ResponseWrapper<List<ExerciceModel>>> getExercices() async {
    final res = await sl<Dio>().get("/exercices/index");

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<ExerciceModel>>.fromJson(true, res.data,
            (p0) {
          List<ExerciceModel> absences = [];
          ExerciceModel absenceModel;
          for (var absence in (p0 as List)) {
            try {
              absenceModel = ExerciceModel.fromJson(absence);
              absences.add(absenceModel);
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
