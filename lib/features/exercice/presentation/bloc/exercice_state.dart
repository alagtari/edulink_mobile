part of 'exercice_bloc.dart';

@immutable
abstract class ExerciceState {
  const ExerciceState();
}

class ExerciceInitial extends ExerciceState {}

class GetExerciceLoading extends ExerciceState {}

class GetExerciceSuccess extends ExerciceState {
  final List<ExerciceModel> exercices;

  const GetExerciceSuccess({
    required this.exercices,
  });
}

class GetExerciceFailed extends ExerciceState {}
