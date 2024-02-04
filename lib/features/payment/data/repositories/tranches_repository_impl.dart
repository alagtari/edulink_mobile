import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/payment/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/payment/data/models/tranche_model.dart';
import 'package:edulink_mobile/features/payment/domain/repositories/tranches_repository.dart';

class TranchesRepositoryImpl implements TranchesRepository {
  final TrancheOnlineDataSource dataSource;

  TranchesRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<TrancheModel>>>>
      getTranches() async {
    try {
      final res = await dataSource.getTranches();
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
