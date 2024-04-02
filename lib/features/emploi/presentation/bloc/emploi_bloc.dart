import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/emploi/data/models/seance_model.dart';
import 'package:edulink_mobile/features/emploi/domain/repositories/emploi_repository.dart';
import 'package:flutter/foundation.dart';

part 'emploi_event.dart';
part 'emploi_state.dart';

class EmploiBloc extends Bloc<EmploiEvent, EmploiState> {
  final _repo = sl<EmploiRepository>();

  EmploiBloc() : super(EmploiInitial()) {
    on<GetEmploiEvent>(
      (event, emit) async {
        emit(GetEmploiLoading());
        final res = await _repo.getEmploi();
        res.fold(
          (l) => emit(GetEmploiFailed()),
          (r) {
            emit(GetEmploiSuccess(seances: r.payload!));
          },
        );
      },
    );
  }
}
