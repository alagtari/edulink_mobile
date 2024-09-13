import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/cantine/data/models/meal_model.dart';
import 'package:intl/intl.dart';

abstract class MealsOnlineDataSource {
  Future<ResponseWrapper<List<MealModel>>> getMeals();
}

class MealsOnlineDataSourceImpl implements MealsOnlineDataSource {
  @override
  Future<ResponseWrapper<List<MealModel>>> getMeals() async {
    // Calculate start_date and end_date
    final DateTime today = DateTime.now();
    final DateTime endDate = today.add(const Duration(days: 7));
    final String startDateStr = DateFormat('yyyy-MM-dd').format(today);
    final String endDateStr = DateFormat('yyyy-MM-dd').format(endDate);

    try {
      final res = await sl<Dio>().get(
        "/cantines/index",
        queryParameters: {
          'start_date': startDateStr,
          'end_date': endDateStr,
        },
      );

      if (res.statusCode == 200) {
        return ResponseWrapper<List<MealModel>>.fromJson(true, res.data, (p0) {
          List<MealModel> meals = [];
          for (var meal in (p0 as List)) {
            try {
              meals.add(MealModel.fromJson(meal));
            } catch (e) {
              continue;
            }
          }
          return meals;
        });
      } else {
        throw ServerFailure();
      }
    } catch (error) {
      // Handle specific exceptions if needed
      throw ServerFailure(); // You can enhance error handling as needed
    }
  }
}
