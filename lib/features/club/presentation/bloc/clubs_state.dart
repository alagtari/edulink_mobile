part of 'clubs_bloc.dart';

@immutable
abstract class ClubState {
  const ClubState();
}

class AuthInitial extends ClubState {}

class GetClubsLoading extends ClubState {}

class GetClubsSuccess extends ClubState {
  final List<ClubModel> clubs;

  const GetClubsSuccess({
    required this.clubs,
  });
}

class GetClubsFailed extends ClubState {}
