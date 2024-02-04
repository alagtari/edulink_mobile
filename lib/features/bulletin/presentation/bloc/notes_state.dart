part of 'notes_bloc.dart';

@immutable
abstract class NoteState {
  const NoteState();
}

class AuthInitial extends NoteState {}

class GetNotesLoading extends NoteState {}

class GetNotesSuccess extends NoteState {
  final List<NoteModel> notes;

  const GetNotesSuccess({
    required this.notes,
  });
}

class GetNotesFailed extends NoteState {}
