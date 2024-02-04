import 'package:equatable/equatable.dart';

class TrancheEntity extends Equatable {
  final String nomTranche;
  final int montantTranche;
  final bool paid;

  const TrancheEntity({
    required this.nomTranche,
    required this.montantTranche,
    required this.paid,
  });

  @override
  List<Object?> get props => [];
}
