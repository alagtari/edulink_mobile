part of 'emploi_bloc.dart';

@immutable
abstract class EmploiState {
  const EmploiState();
}

class EmploiInitial extends EmploiState {}

class GetEmploiLoading extends EmploiState {}

class GetEmploiSuccess extends EmploiState {
  final List<SeanceModel> seances;

  const GetEmploiSuccess({
    required this.seances,
  });
}

class GetEmploiFailed extends EmploiState {}
