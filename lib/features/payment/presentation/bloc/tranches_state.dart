part of 'tranches_bloc.dart';

@immutable
abstract class TrancheState {
  const TrancheState();
}

class AuthInitial extends TrancheState {}

class GetTranchesLoading extends TrancheState {}

class GetTranchesSuccess extends TrancheState {
  final List<TrancheModel> tranches;

  const GetTranchesSuccess({
    required this.tranches,
  });
}

class GetTranchesFailed extends TrancheState {}
