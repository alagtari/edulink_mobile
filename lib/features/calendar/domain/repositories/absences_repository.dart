import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/calendar/data/models/absence_model.dart';

abstract class AbsenceRepository {
  Future<Either<Failure, ResponseWrapper<List<AbsenceModel>>>> getAbsences();
}
