import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/bulletin/data/models/note_model.dart';

abstract class NotesRepository {
  Future<Either<Failure, ResponseWrapper<List<NoteModel>>>> getNotes();
}
