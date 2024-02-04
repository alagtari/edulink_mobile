import 'package:edulink_mobile/features/cantine/data/models/meal_model.dart';
import 'package:equatable/equatable.dart';

class DayMealsEntity extends Equatable {
  final List<MealModel> meals;

  const DayMealsEntity({
    required this.meals,
  });

  @override
  List<Object?> get props => [];
}
