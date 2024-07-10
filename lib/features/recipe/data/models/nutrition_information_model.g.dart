// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_information_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NutritionInformationAdapter
    extends TypeAdapter<_$NutritionInformationModelImpl> {
  @override
  final int typeId = 3;

  @override
  _$NutritionInformationModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NutritionInformationModelImpl();
  }

  @override
  void write(BinaryWriter writer, _$NutritionInformationModelImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutritionInformationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NutritionInformationModelImpl _$$NutritionInformationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NutritionInformationModelImpl(
      calories: json['calories'] as String? ?? "",
      fat: json['fat'] as String? ?? "",
      carbohydrates: json['carbohydrates'] as String? ?? "",
      protein: json['protein'] as String? ?? "",
    );

Map<String, dynamic> _$$NutritionInformationModelImplToJson(
        _$NutritionInformationModelImpl instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'fat': instance.fat,
      'carbohydrates': instance.carbohydrates,
      'protein': instance.protein,
    };
