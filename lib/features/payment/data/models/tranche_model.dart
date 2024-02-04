import 'package:edulink_mobile/features/payment/domain/entities/tranche_entity.dart';

class TrancheModel extends TrancheEntity {
  const TrancheModel({
    required super.nomTranche,
    required super.montantTranche,
    required super.paid,
  });

  factory TrancheModel.fromJson(Map<String, dynamic> json) {
    var montantTranche = 0;
    var nomTranche = "";
    for (var key in json.keys) {
      if (key.startsWith("montantTranche")) {
        montantTranche = json[key];
      }
      if (key.startsWith("nomTranche")) {
        nomTranche = json[key];
      }
    }
    return TrancheModel(
      montantTranche: montantTranche,
      nomTranche: nomTranche,
      paid: json['paid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'montantTranche': montantTranche,
      'nomTranche': nomTranche,
      'paid': paid,
    };
  }
}
