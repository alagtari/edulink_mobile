part of 'clubs_bloc.dart';

@immutable
abstract class ClubsEvent {
  const ClubsEvent();
}

class GetClubsEvent extends ClubsEvent {}
