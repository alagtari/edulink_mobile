import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/payment/data/models/tranche_model.dart';

abstract class TranchesRepository {
  Future<Either<Failure, ResponseWrapper<List<TrancheModel>>>> getTranches();
}
