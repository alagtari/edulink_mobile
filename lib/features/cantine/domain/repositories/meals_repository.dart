import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/cantine/data/models/meal_model.dart';

abstract class MealsRepository {
  Future<Either<Failure, ResponseWrapper<List<MealModel>>>> getMeals();
}
