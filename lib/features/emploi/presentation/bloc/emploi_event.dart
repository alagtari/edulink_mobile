part of 'emploi_bloc.dart';

@immutable
abstract class EmploiEvent {
  const EmploiEvent();
}

class GetEmploiEvent extends EmploiEvent {}
