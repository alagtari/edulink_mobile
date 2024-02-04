import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/bulletin/data/models/note_model.dart';
import 'package:edulink_mobile/features/bulletin/domain/repositories/notes_repository.dart';
import 'package:flutter/foundation.dart';

part 'notes_event.dart';
part 'notes_state.dart';

class NotesBloc extends Bloc<NotesEvent, NoteState> {
  final _repo = sl<NotesRepository>();

  NotesBloc() : super(AuthInitial()) {
    on<GetNotesEvent>(
      (event, emit) async {
        emit(GetNotesLoading());
        final res = await _repo.getNotes();
        res.fold(
          (l) => emit(GetNotesFailed()),
          (r) {
            emit(GetNotesSuccess(notes: r.payload ?? []));
          },
        );
      },
    );
  }
}
