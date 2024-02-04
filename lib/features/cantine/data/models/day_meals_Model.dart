import 'package:edulink_mobile/features/cantine/data/models/meal_model.dart';
import 'package:edulink_mobile/features/cantine/domain/entities/day_meals_entity.dart';

class DayMealsModel extends DayMealsEntity {
  const DayMealsModel({
    required super.meals,
  });

  factory DayMealsModel.fromJson(List<Map<String, dynamic>> json) {
    List<MealModel> meals = [];
    for (var meal in (json as List)) {
      try {
        meals.add(MealModel.fromJson(meal));
      } catch (e) {
        continue;
      }
    }
    return DayMealsModel(
      meals: meals,
    );
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
