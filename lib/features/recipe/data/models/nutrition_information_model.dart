import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_information_model.g.dart';

part 'nutrition_information_model.freezed.dart';

@freezed
class NutritionInformationModel with _$NutritionInformationModel {
  const factory NutritionInformationModel({
    required String calories,
    required String fat,
    required String carbohydrates,
    required String protein,
  }) = _NutritionInformationModel;

  factory NutritionInformationModel.fromJson(Map<String, dynamic> json) =>
      _$NutritionInformationModelFromJson(json);
}