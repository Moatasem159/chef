import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/features/recipe/data/models/nutrition_information_model.dart';
import 'package:chef/features/recipe/data/models/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'recipe_response_model.g.dart';

part 'recipe_response_model.freezed.dart';

@freezed
class RecipeResponseModel extends HiveObject with _$RecipeResponseModel {
  RecipeResponseModel._();
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 1)
   factory RecipeResponseModel({
    @HiveField(0)required String id,
    @HiveField(1)@JsonKey(name: "english_recipe")required RecipeModel englishRecipe,
    @HiveField(2)@JsonKey(name: "arabic_recipe") required RecipeModel arabicRecipe,
    @HiveField(3)@JsonKey(name: "nutrition_information") required NutritionInformationModel nutationInformation,
  }) = _RecipeResponseModel;

  factory RecipeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeResponseModelFromJson(json);
}

extension RecipeResponseModelExtension on RecipeResponseModel{
  RecipeModel getRecipe(BuildContext context)=>
   context.lang=="en"? englishRecipe:arabicRecipe;
}