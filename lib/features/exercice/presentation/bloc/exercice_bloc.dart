import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/emploi/data/models/seance_model.dart';
import 'package:edulink_mobile/features/exercice/data/models/exercice_model.dart';
import 'package:edulink_mobile/features/exercice/domain/repositories/exercices_repository.dart';
import 'package:flutter/foundation.dart';

part 'exercice_event.dart';
part 'exercice_state.dart';

class ExerciceBloc extends Bloc<ExerciceEvent, ExerciceState> {
  final _repo = sl<ExerciceRepository>();

  ExerciceBloc() : super(ExerciceInitial()) {
    on<GetExerciceEvent>(
      (event, emit) async {
        emit(GetExerciceLoading());
        final res = await _repo.getExercices();
        res.fold(
          (l) => emit(GetExerciceFailed()),
          (r) {
            emit(GetExerciceSuccess(exercices: r.payload!));
          },
        );
      },
    );
  }
}
