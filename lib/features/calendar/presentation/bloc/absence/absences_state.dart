part of 'absences_bloc.dart';

@immutable
abstract class AbsencesState {
  const AbsencesState();
}

class AbsencesInitial extends AbsencesState {}

class GetAbsencesLoading extends AbsencesState {}

class GetAbsencesSuccess extends AbsencesState {
  final List<AbsenceModel> absences;

  const GetAbsencesSuccess({
    required this.absences,
  });
}

class GetAbsencesFailed extends AbsencesState {}
