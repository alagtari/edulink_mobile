import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/club/data/models/club_model.dart';

abstract class ClubOnlineDataSource {
  Future<ResponseWrapper<List<ClubModel>>> getClubs();
}

class ClubOnlineDataSourceImpl implements ClubOnlineDataSource {
  @override
  Future<ResponseWrapper<List<ClubModel>>> getClubs() async {
    final res = await sl<Dio>().get(
      "/factures/viewFactureParent",
    );

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<ClubModel>>.fromJson(
            true, {'payload': res.data['clubRegistrations']}, (p0) {
          List<ClubModel> clubs = [];
          for (var club in (p0 as List)) {
            try {
              clubs.add(ClubModel.fromJson(club));
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
