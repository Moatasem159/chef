// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeModelImplAdapter extends TypeAdapter<_$RecipeModelImpl> {
  @override
  final int typeId = 2;

  @override
  _$RecipeModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$RecipeModelImpl();
  }

  @override
  void write(BinaryWriter writer, _$RecipeModelImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeModelImpl _$$RecipeModelImplFromJson(Map<String, dynamic> json) =>
    _$RecipeModelImpl(
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      cuisine: json['cuisine'] as String? ?? "",
      allergens: json['allergens'] as String? ?? "",
      servings: json['servings'] as String? ?? "",
      instructions: (json['instructions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
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
