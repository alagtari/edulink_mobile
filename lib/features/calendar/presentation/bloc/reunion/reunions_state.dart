part of 'reunions_bloc.dart';

@immutable
abstract class ReunionsState {
  const ReunionsState();
}

class ReunionsInitial extends ReunionsState {}

class GetReunionsLoading extends ReunionsState {}

class GetReunionsSuccess extends ReunionsState {
  final List<ReunionModel> reunions;

  const GetReunionsSuccess({
    required this.reunions,
  });
}

class GetReunionsFailed extends ReunionsState {}
