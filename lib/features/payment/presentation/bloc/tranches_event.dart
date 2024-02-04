part of 'tranches_bloc.dart';

@immutable
abstract class TranchesEvent {
  const TranchesEvent();
}

class GetTranchesEvent extends TranchesEvent {}
