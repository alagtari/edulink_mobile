import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/calendar/data/models/exercice_model.dart';

abstract class ExerciceOnlineDataSource {
  Future<ResponseWrapper<List<ExerciceModel>>> getExercices(
      {required String date});
}

class ExerciceOnlineDataSourceImpl implements ExerciceOnlineDataSource {
  @override
  Future<ResponseWrapper<List<ExerciceModel>>> getExercices(
      {required String date}) async {
    final res = await sl<Dio>().get("/exercices/index");

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<ExerciceModel>>.fromJson(true, res.data,
            (p0) {
          List<ExerciceModel> exercices = [];
          ExerciceModel exerciceModel;
          for (var exercice in (p0 as List)) {
            try {
              exerciceModel = ExerciceModel.fromJson(exercice);
              if (exerciceModel.dateL == date) {
                exercices.add(exerciceModel);
              }
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
