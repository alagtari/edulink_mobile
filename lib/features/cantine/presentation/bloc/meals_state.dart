part of 'meals_bloc.dart';

@immutable
abstract class MealsState {
  const MealsState();
}

class MealsInitial extends MealsState {}

class GetMealsLoading extends MealsState {}

class GetMealsSuccess extends MealsState {
  final WeekMealsModel? meals;

  const GetMealsSuccess({
    this.meals,
  });
}

class GetMealsFailed extends MealsState {}
