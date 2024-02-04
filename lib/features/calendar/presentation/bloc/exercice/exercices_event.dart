part of 'exercices_bloc.dart';

@immutable
abstract class ExercicesEvent {
  const ExercicesEvent();
}

class GetExercicesEvent extends ExercicesEvent {}
