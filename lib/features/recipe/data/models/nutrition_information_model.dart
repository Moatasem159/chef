import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'nutrition_information_model.g.dart';

part 'nutrition_information_model.freezed.dart';

@freezed
class NutritionInformationModel extends HiveObject with _$NutritionInformationModel {
  NutritionInformationModel._();
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 3,adapterName: "NutritionInformationAdapter")
   factory NutritionInformationModel({
    @HiveType(typeId: 0)@Default("") String calories,
    @HiveType(typeId: 1)@Default("") String fat,
    @HiveType(typeId: 2)@Default("") String carbohydrates,
    @HiveType(typeId: 3)@Default("") String protein,
  }) = _NutritionInformationModel;

  factory NutritionInformationModel.fromJson(Map<String, dynamic> json) =>
      _$NutritionInformationModelFromJson(json);
}