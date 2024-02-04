part of 'absences_bloc.dart';

@immutable
abstract class AbsencesEvent {
  const AbsencesEvent();
}

class GetAbsencesEvent extends AbsencesEvent {}
