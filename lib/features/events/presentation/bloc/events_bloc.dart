import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/events/data/models/event_model.dart';
import 'package:edulink_mobile/features/events/domain/repositories/events_repository.dart';
import 'package:flutter/foundation.dart';

part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventState> {
  final _repo = sl<EventsRepository>();

  EventsBloc() : super(AuthInitial()) {
    on<GetEventsEvent>(
      (event, emit) async {
        emit(GetEventsLoading());
        final res = await _repo.getEvents();
        res.fold(
          (l) => emit(GetEventsFailed()),
          (r) {
            emit(GetEventsSuccess(events: r.payload ?? []));
          },
        );
      },
    );
  }
}
