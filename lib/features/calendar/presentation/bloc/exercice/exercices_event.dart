part of 'exercices_bloc.dart';

@immutable
abstract class ExercicesEvent {
  const ExercicesEvent();
}

class GetExercicesEvent extends ExercicesEvent {
  final String date;

  const GetExercicesEvent({required this.date});
}
