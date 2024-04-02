import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/emploi/data/models/seance_model.dart';

abstract class EmploiOnlineDataSource {
  Future<ResponseWrapper<List<SeanceModel>>> getEmploi();
}

class EmploiOnlineDataSourceImpl implements EmploiOnlineDataSource {
  @override
  Future<ResponseWrapper<List<SeanceModel>>> getEmploi() async {
    final res = await sl<Dio>().get(
      "/emplois/index",
    );

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<SeanceModel>>.fromJson(
          true,
          res.data,
          (p0) {
            List<SeanceModel> seances = [];
            for (var seance in (p0 as List)) {
              try {
                seances.add(SeanceModel.fromJson(seance));
              } catch (e) {
                continue;
              }
            }
            return seances;
          },
        );
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }
}
