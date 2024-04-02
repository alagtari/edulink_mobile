import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/emploi/data/models/seance_model.dart';

abstract class EmploiRepository {
  Future<Either<Failure, ResponseWrapper<List<SeanceModel>>>> getEmploi();
}
