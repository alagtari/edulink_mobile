part of 'reunions_bloc.dart';

@immutable
abstract class ReunionsEvent {
  const ReunionsEvent();
}

class GetReunionsEvent extends ReunionsEvent {
  final String date;

  const GetReunionsEvent({required this.date});
}
