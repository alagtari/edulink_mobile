import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/calendar/data/models/absence_model.dart';
import 'package:edulink_mobile/features/calendar/domain/repositories/absences_repository.dart';
import 'package:flutter/foundation.dart';

part 'absences_event.dart';
part 'absences_state.dart';

class AbsencesBloc extends Bloc<AbsencesEvent, AbsencesState> {
  final _repo = sl<AbsenceRepository>();

  AbsencesBloc() : super(AbsencesInitial()) {
    on<GetAbsencesEvent>(
      (event, emit) async {
        emit(GetAbsencesLoading());
        final res = await _repo.getAbsences();
        res.fold(
          (l) => emit(GetAbsencesFailed()),
          (r) {
            emit(GetAbsencesSuccess(absences: r.payload!));
          },
        );
      },
    );
  }
}
