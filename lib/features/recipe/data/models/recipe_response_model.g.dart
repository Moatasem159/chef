// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeResponseModelImplAdapter
    extends TypeAdapter<_$RecipeResponseModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$RecipeResponseModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$RecipeResponseModelImpl(
      id: fields[0] as String,
      englishRecipe: fields[1] as RecipeModel,
      arabicRecipe: fields[2] as RecipeModel,
      nutationInformation: fields[3] as NutritionInformationModel,
    );
  }

  @override
  void write(BinaryWriter writer, _$RecipeResponseModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.englishRecipe)
      ..writeByte(2)
      ..write(obj.arabicRecipe)
      ..writeByte(3)
      ..write(obj.nutationInformation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeResponseModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      'english_recipe': instance.englishRecipe.toJson(),
      'arabic_recipe': instance.arabicRecipe.toJson(),
      'nutrition_information': instance.nutationInformation.toJson(),
    };
