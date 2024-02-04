import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/calendar/data/models/reunion_model.dart';
import 'package:edulink_mobile/features/calendar/domain/repositories/reunions_repository.dart';
import 'package:flutter/foundation.dart';

part 'reunions_event.dart';
part 'reunions_state.dart';

class ReunionsBloc extends Bloc<ReunionsEvent, ReunionsState> {
  final _repo = sl<ReunionsRepository>();

  ReunionsBloc() : super(ReunionsInitial()) {
    on<GetReunionsEvent>(
      (event, emit) async {
        emit(GetReunionsLoading());
        final res = await _repo.getReunions(date: event.date);
        res.fold(
          (l) => emit(GetReunionsFailed()),
          (r) {
            emit(GetReunionsSuccess(reunions: r.payload ?? []));
          },
        );
      },
    );
  }
}
