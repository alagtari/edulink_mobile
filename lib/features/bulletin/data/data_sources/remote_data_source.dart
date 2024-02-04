import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/bulletin/data/models/note_model.dart';

abstract class NotesOnlineDataSource {
  Future<ResponseWrapper<List<NoteModel>>> getNotes();
}

class NotesOnlineDataSourceImpl implements NotesOnlineDataSource {
  @override
  Future<ResponseWrapper<List<NoteModel>>> getNotes() async {
    final res = await sl<Dio>().get(
      "/bulletins/index",
    );

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<NoteModel>>.fromJson(
            true, {'payload': res.data['payload'][0]["description"]}, (p0) {
          List<NoteModel> clubs = [];
          for (var club in (p0 as List)) {
            try {
              clubs.add(NoteModel.fromJson(club));
            } catch (e) {
              continue;
            }
          }
          return clubs;
        });
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }
}
