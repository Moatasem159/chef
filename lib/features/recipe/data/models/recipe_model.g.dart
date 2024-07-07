// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeModelImpl _$$RecipeModelImplFromJson(Map<String, dynamic> json) =>
    _$RecipeModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      cuisine: json['cuisine'] as String,
      allergens: json['allergens'] as String,
      servings: json['servings'] as String,
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$RecipeModelImplToJson(_$RecipeModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'cuisine': instance.cuisine,
      'allergens': instance.allergens,
      'servings': instance.servings,
      'instructions': instance.instructions,
      'ingredients': instance.ingredients,
    };
