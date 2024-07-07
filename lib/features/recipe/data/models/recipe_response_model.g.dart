// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeResponseModelImpl _$$RecipeResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeResponseModelImpl(
      id: json['id'] as String,
      englishRecipe:
          RecipeModel.fromJson(json['english_recipe'] as Map<String, dynamic>),
      arabicRecipe:
          RecipeModel.fromJson(json['arabic_recipe'] as Map<String, dynamic>),
      nutationInformation: NutritionInformationModel.fromJson(
          json['nutrition_information'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecipeResponseModelImplToJson(
        _$RecipeResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'english_recipe': instance.englishRecipe,
      'arabic_recipe': instance.arabicRecipe,
      'nutrition_information': instance.nutationInformation,
    };
