part of 'meals_bloc.dart';

@immutable
abstract class MealsState {
  const MealsState();
}

class MealsInitial extends MealsState {}

class GetMealsLoading extends MealsState {}

class GetMealsSuccess extends MealsState {
  final List<MealModel> meals;

  const GetMealsSuccess({
   required this.meals,
  });
}

class GetMealsFailed extends MealsState {}
