import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/bulletin/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/bulletin/data/models/note_model.dart';
import 'package:edulink_mobile/features/bulletin/domain/repositories/notes_repository.dart';

class NotesRepositoryImpl implements NotesRepository {
  final NotesOnlineDataSource dataSource;

  NotesRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, ResponseWrapper<List<NoteModel>>>> getNotes() async {
    try {
      final res = await dataSource.getNotes();
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }
}
