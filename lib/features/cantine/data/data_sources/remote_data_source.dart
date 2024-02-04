import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/cantine/data/models/week_meals_model.dart';

abstract class MealsOnlineDataSource {
  Future<ResponseWrapper<WeekMealsModel>> getMeals();
}

class MealsOnlineDataSourceImpl implements MealsOnlineDataSource {
  @override
  Future<ResponseWrapper<WeekMealsModel>> getMeals() async {
    final res = await sl<Dio>().get(
      "/cantines/index",
    );

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<WeekMealsModel>.fromJson(
          true,
          res.data,
          (p0) => WeekMealsModel.fromJson(p0),
        );
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }
}
