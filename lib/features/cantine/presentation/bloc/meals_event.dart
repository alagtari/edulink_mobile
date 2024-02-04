part of 'meals_bloc.dart';

@immutable
abstract class MealsEvent {
  const MealsEvent();
}

class GetMealsEvent extends MealsEvent {}
