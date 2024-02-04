import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/club/data/models/club_model.dart';
import 'package:edulink_mobile/features/club/domain/repositories/clubs_repository.dart';
import 'package:flutter/foundation.dart';

part 'clubs_event.dart';
part 'clubs_state.dart';

class ClubsBloc extends Bloc<ClubsEvent, ClubState> {
  final _repo = sl<ClubsRepository>();

  ClubsBloc() : super(AuthInitial()) {
    on<GetClubsEvent>(
      (event, emit) async {
        emit(GetClubsLoading());
        final res = await _repo.getClubs();
        res.fold(
          (l) => emit(GetClubsFailed()),
          (r) {
            emit(GetClubsSuccess(clubs: r.payload ?? []));
          },
        );
      },
    );
  }
}
