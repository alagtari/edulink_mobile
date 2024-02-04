import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/club/data/models/club_model.dart';

abstract class ClubsRepository {
  Future<Either<Failure, ResponseWrapper<List<ClubModel>>>> getClubs();
}
