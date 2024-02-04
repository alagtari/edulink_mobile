import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/payment/data/models/tranche_model.dart';
import 'package:edulink_mobile/features/payment/domain/repositories/tranches_repository.dart';
import 'package:flutter/foundation.dart';

part 'tranches_event.dart';
part 'tranches_state.dart';

class TranchesBloc extends Bloc<TranchesEvent, TrancheState> {
  final _repo = sl<TranchesRepository>();

  TranchesBloc() : super(AuthInitial()) {
    on<GetTranchesEvent>(
      (event, emit) async {
        emit(GetTranchesLoading());
        final res = await _repo.getTranches();
        res.fold(
          (l) => emit(GetTranchesFailed()),
          (r) {
            emit(GetTranchesSuccess(tranches: r.payload!));
          },
        );
      },
    );
  }
}
