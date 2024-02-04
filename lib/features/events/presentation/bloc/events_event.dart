part of 'events_bloc.dart';

@immutable
abstract class EventsEvent {
  const EventsEvent();
}

class GetEventsEvent extends EventsEvent {}
