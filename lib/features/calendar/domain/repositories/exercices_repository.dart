import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/calendar/data/models/exercice_model.dart';

abstract class ExerciceRepository {
  Future<Either<Failure, ResponseWrapper<List<ExerciceModel>>>> getExercices({required String date});
}
