part of 'exercices_bloc.dart';

@immutable
abstract class ExercicesState {
  const ExercicesState();
}

class ExercicesInitial extends ExercicesState {}

class GetExercicesLoading extends ExercicesState {}

class GetExercicesSuccess extends ExercicesState {
  final List<ExerciceModel> exercices;

  const GetExercicesSuccess({
    required this.exercices,
  });
}

class GetExercicesFailed extends ExercicesState {}
