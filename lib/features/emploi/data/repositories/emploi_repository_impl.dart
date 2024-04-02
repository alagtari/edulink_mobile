import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/emploi/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/emploi/data/models/seance_model.dart';
import 'package:edulink_mobile/features/emploi/domain/repositories/emploi_repository.dart';

class EmploiRepositoryImpl implements EmploiRepository {
  final EmploiOnlineDataSource dataSource;

  EmploiRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<SeanceModel>>>>
      getEmploi() async {
    try {
      final res = await dataSource.getEmploi();
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
