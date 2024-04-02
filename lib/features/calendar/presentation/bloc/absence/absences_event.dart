part of 'absences_bloc.dart';

@immutable
abstract class AbsencesEvent {
  const AbsencesEvent();
}

class GetAbsencesEvent extends AbsencesEvent {
  final String date;

  const GetAbsencesEvent({required this.date});
}
