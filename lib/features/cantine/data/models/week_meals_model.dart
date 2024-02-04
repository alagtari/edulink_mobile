import 'package:edulink_mobile/features/cantine/data/models/day_meals_Model.dart';
import 'package:edulink_mobile/features/cantine/domain/entities/week_meals_entity.dart';

class WeekMealsModel extends WeekMealsEntity {
  const WeekMealsModel({
    super.lundi,
    super.mardi,
    super.mercredi,
    super.jeudi,
    super.vendredi,
    super.samedi,
  });
  factory WeekMealsModel.fromJson(Map<String, dynamic> json) {
    final List<Map<String, dynamic>>? lundi = json['lundi'] != null
        ? (json['lundi'] as List<dynamic>)
            .map((element) => element as Map<String, dynamic>)
            .toList()
        : null;
    final List<Map<String, dynamic>>? mardi = json['mardi'] != null
        ? (json['mardi'] as List<dynamic>)
            .map((element) => element as Map<String, dynamic>)
            .toList()
        : null;
    final List<Map<String, dynamic>>? mercredi = json['mercredi'] != null
        ? (json['mercredi'] as List<dynamic>)
            .map((element) => element as Map<String, dynamic>)
            .toList()
        : null;
    final List<Map<String, dynamic>>? jeudi = json['jeudi'] != null
        ? (json['jeudi'] as List<dynamic>)
            .map((element) => element as Map<String, dynamic>)
            .toList()
        : null;
    final List<Map<String, dynamic>>? vendredi = json['vendredi'] != null
        ? (json['vendredi'] as List<dynamic>)
            .map((element) => element as Map<String, dynamic>)
            .toList()
        : null;
    final List<Map<String, dynamic>>? samedi = json['samedi'] != null
        ? (json['samedi'] as List<dynamic>)
            .map((element) => element as Map<String, dynamic>)
            .toList()
        : null;

    return WeekMealsModel(
        lundi: json['lundi'] != null ? DayMealsModel.fromJson(lundi!) : null,
        mardi: json['mardi'] != null ? DayMealsModel.fromJson(mardi!) : null,
        mercredi:json['mercredi'] != null ? DayMealsModel.fromJson(mercredi!) : null,
        jeudi: json['jeudi'] != null ? DayMealsModel.fromJson(jeudi!) : null,
        vendredi:json['vendredi'] != null ? DayMealsModel.fromJson(vendredi!) : null,
        samedi: json['samedi'] != null ? DayMealsModel.fromJson(samedi!) : null);
  }

  Map<String, dynamic> toJson() {
    return {
      'lundi': lundi?.toJson(),
      'mardi': mardi?.toJson(),
      'mercredi': mercredi?.toJson(),
      'jeudi': jeudi?.toJson(),
      'vendredi': vendredi?.toJson(),
      'samedi': samedi?.toJson(),
    };
  }
}
