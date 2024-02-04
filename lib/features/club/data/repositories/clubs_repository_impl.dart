import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/club/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/club/data/models/club_model.dart';
import 'package:edulink_mobile/features/club/domain/repositories/clubs_repository.dart';

class ClubsRepositoryImpl implements ClubsRepository {
  final ClubOnlineDataSource dataSource;

  ClubsRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<ClubModel>>>> getClubs() async {
    try {
      final res = await dataSource.getClubs();
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
