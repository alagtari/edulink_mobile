import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/calendar/data/data_sources/reunion_remote_data_source.dart';
import 'package:edulink_mobile/features/calendar/data/models/reunion_model.dart';
import 'package:edulink_mobile/features/calendar/domain/repositories/reunions_repository.dart';

class ReunionsRepositoryImpl implements ReunionsRepository {
  final ReunionOnlineDataSource dataSource;

  ReunionsRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<ReunionModel>>>> getReunions(
      {required String date}) async {
    try {
      final res = await dataSource.getReunions(date: date);
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
