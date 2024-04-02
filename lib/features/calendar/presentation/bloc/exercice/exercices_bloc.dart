import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/calendar/data/models/exercice_model.dart';
import 'package:edulink_mobile/features/calendar/data/models/reunion_model.dart';
import 'package:edulink_mobile/features/calendar/domain/repositories/exercices_repository.dart';
import 'package:edulink_mobile/features/calendar/domain/repositories/reunions_repository.dart';
import 'package:flutter/foundation.dart';

part 'exercices_event.dart';
part 'exercices_state.dart';

class ExercicesBloc extends Bloc<ExercicesEvent, ExercicesState> {
  final _repo = sl<ExerciceRepository>();

  ExercicesBloc() : super(ExercicesInitial()) {
    on<GetExercicesEvent>(
      (event, emit) async {
        emit(GetExercicesLoading());
        final res = await _repo.getExercices(date : event.date);
        res.fold(
          (l) => emit(GetExercicesFailed()),
          (r) {
            emit(GetExercicesSuccess(exercices: r.payload!));
          },
        );
      },
    );
  }
}
