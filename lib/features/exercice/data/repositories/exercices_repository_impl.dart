import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/exercice/data/data_sources/exercice_remote_data_source.dart';
import 'package:edulink_mobile/features/exercice/data/models/exercice_model.dart';
import 'package:edulink_mobile/features/exercice/domain/repositories/exercices_repository.dart';

class ExerciceRepositoryImpl implements ExerciceRepository {
  final ExerciceOnlineDataSource dataSource;

  ExerciceRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<ExerciceModel>>>>
      getExercices() async {
    try {
      final res = await dataSource.getExercices();
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
