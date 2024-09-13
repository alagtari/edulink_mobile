import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/cantine/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/cantine/data/models/meal_model.dart';
import 'package:edulink_mobile/features/cantine/domain/repositories/meals_repository.dart';

class MealsRepositoryImpl implements MealsRepository {
  final MealsOnlineDataSource dataSource;

  MealsRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<MealModel>>>>
      getMeals() async {
    try {
      final res = await dataSource.getMeals();
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
