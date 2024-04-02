import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/calendar/data/data_sources/absence_remote_data_source.dart';
import 'package:edulink_mobile/features/calendar/data/models/absence_model.dart';
import 'package:edulink_mobile/features/calendar/domain/repositories/absences_repository.dart';

class AbsenceRepositoryImpl implements AbsenceRepository {
  final AbsenceOnlineDataSource dataSource;

  AbsenceRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<AbsenceModel>>>>
      getAbsences({required String date}) async {
    try {
      final res = await dataSource.getAbsences(date:date);
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
