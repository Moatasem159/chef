import 'package:freezed_annotation/freezed_annotation.dart';
part 'recipe_model.g.dart';
part 'recipe_model.freezed.dart';
@freezed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    required String title,
    required String description,
    required String cuisine,
    required String allergens,
    required String servings,
    required List<String> instructions,
    required List<String> ingredients,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}