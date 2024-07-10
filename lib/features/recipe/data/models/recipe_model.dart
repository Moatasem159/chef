
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'recipe_model.g.dart';

part 'recipe_model.freezed.dart';

@freezed
class RecipeModel extends HiveObject with _$RecipeModel {
  RecipeModel._();
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 2)
  factory RecipeModel({
    @HiveType(typeId: 0) @Default("") String title,
    @HiveType(typeId: 1) @Default("") String description,
    @HiveType(typeId: 2) @Default("") String cuisine,
    @HiveType(typeId: 3) @Default("") String allergens,
    @HiveType(typeId: 4) @Default("") String servings,
    @HiveType(typeId: 5) @Default([]) List<String> instructions,
    @HiveType(typeId: 6) @Default([]) List<String> ingredients,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}