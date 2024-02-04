part of 'notes_bloc.dart';

@immutable
abstract class NotesEvent {
  const NotesEvent();
}

class GetNotesEvent extends NotesEvent {}
