import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/features/recipe/data/models/nutrition_information_model.dart';
import 'package:chef/features/recipe/data/models/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide JsonKey;
import 'package:json_annotation/json_annotation.dart';


part 'recipe_response_model.g.dart';

part 'recipe_response_model.freezed.dart';

@freezed
class RecipeResponseModel with _$RecipeResponseModel {
  const factory RecipeResponseModel({
    required String id,
    @JsonKey(name: "english_recipe") required RecipeModel englishRecipe,
    @JsonKey(name: "arabic_recipe") required RecipeModel arabicRecipe,
    @JsonKey(name: "nutrition_information") required NutritionInformationModel nutationInformation,
  }) = _RecipeResponseModel;

  factory RecipeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeResponseModelFromJson(json);
}

extension RecipeResponseModelExtension on RecipeResponseModel{
  RecipeModel getRecipe(BuildContext context)=>
   context.lang=="en"? englishRecipe:arabicRecipe;
}