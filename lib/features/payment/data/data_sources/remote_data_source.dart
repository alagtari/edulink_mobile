import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/payment/data/models/tranche_model.dart';

abstract class TrancheOnlineDataSource {
  Future<ResponseWrapper<List<TrancheModel>>> getTranches();
}

class TrancheOnlineDataSourceImpl implements TrancheOnlineDataSource {
  @override
  Future<ResponseWrapper<List<TrancheModel>>> getTranches() async {
    final res = await sl<Dio>().get(
      "/factures/viewFactureParent",
    );

    if (res.statusCode == 200) {
      try {
        return ResponseWrapper<List<TrancheModel>>.fromJson(
            true, {'payload': res.data['tranches']}, (p0) {
          List<TrancheModel> clubs = [];
          for (var club in (p0 as List)) {
            try {
              clubs.add(TrancheModel.fromJson(club));
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
