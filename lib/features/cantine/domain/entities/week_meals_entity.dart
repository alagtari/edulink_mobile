import 'package:edulink_mobile/features/cantine/data/models/day_meals_Model.dart';
import 'package:equatable/equatable.dart';

class WeekMealsEntity extends Equatable {
  final DayMealsModel? lundi;
  final DayMealsModel? mardi;
  final DayMealsModel? mercredi;
  final DayMealsModel? jeudi;
  final DayMealsModel? vendredi;
  final DayMealsModel? samedi;

  const WeekMealsEntity({
    this.lundi,
    this.mardi,
    this.mercredi,
    this.jeudi,
    this.vendredi,
    this.samedi,
  });

  @override
  List<Object?> get props => [];
}
