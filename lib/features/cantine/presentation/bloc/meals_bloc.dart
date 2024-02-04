import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/cantine/data/models/week_meals_model.dart';
import 'package:edulink_mobile/features/cantine/domain/repositories/meals_repository.dart';
import 'package:flutter/foundation.dart';

part 'meals_event.dart';
part 'meals_state.dart';

class MealsBloc extends Bloc<MealsEvent, MealsState> {
  final _repo = sl<MealsRepository>();

  MealsBloc() : super(MealsInitial()) {
    on<GetMealsEvent>(
      (event, emit) async {
        emit(GetMealsLoading());
        final res = await _repo.getMeals();
        res.fold(
          (l) => emit(GetMealsFailed()),
          (r) {
            emit(GetMealsSuccess(meals: r.payload!));
          },
        );
      },
    );
  }
}
