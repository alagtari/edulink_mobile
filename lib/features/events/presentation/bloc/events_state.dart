part of 'events_bloc.dart';

@immutable
abstract class EventState {
  const EventState();
}

class AuthInitial extends EventState {}

class GetEventsLoading extends EventState {}

class GetEventsSuccess extends EventState {
  final List<EventModel> events;

  const GetEventsSuccess({
    required this.events,
  });
}

class GetEventsFailed extends EventState {}
