// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NutritionInformationModel _$NutritionInformationModelFromJson(
    Map<String, dynamic> json) {
  return _NutritionInformationModel.fromJson(json);
}

/// @nodoc
mixin _$NutritionInformationModel {
  @HiveType(typeId: 0)
  String get calories => throw _privateConstructorUsedError;
  @HiveType(typeId: 1)
  String get fat => throw _privateConstructorUsedError;
  @HiveType(typeId: 2)
  String get carbohydrates => throw _privateConstructorUsedError;
  @HiveType(typeId: 3)
  String get protein => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionInformationModelCopyWith<NutritionInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionInformationModelCopyWith<$Res> {
  factory $NutritionInformationModelCopyWith(NutritionInformationModel value,
          $Res Function(NutritionInformationModel) then) =
      _$NutritionInformationModelCopyWithImpl<$Res, NutritionInformationModel>;
  @useResult
  $Res call(
      {@HiveType(typeId: 0) String calories,
      @HiveType(typeId: 1) String fat,
      @HiveType(typeId: 2) String carbohydrates,
      @HiveType(typeId: 3) String protein});
}

/// @nodoc
class _$NutritionInformationModelCopyWithImpl<$Res,
        $Val extends NutritionInformationModel>
    implements $NutritionInformationModelCopyWith<$Res> {
  _$NutritionInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? fat = null,
    Object? carbohydrates = null,
    Object? protein = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutritionInformationModelImplCopyWith<$Res>
    implements $NutritionInformationModelCopyWith<$Res> {
  factory _$$NutritionInformationModelImplCopyWith(
          _$NutritionInformationModelImpl value,
          $Res Function(_$NutritionInformationModelImpl) then) =
      __$$NutritionInformationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveType(typeId: 0) String calories,
      @HiveType(typeId: 1) String fat,
      @HiveType(typeId: 2) String carbohydrates,
      @HiveType(typeId: 3) String protein});
}

/// @nodoc
class __$$NutritionInformationModelImplCopyWithImpl<$Res>
    extends _$NutritionInformationModelCopyWithImpl<$Res,
        _$NutritionInformationModelImpl>
    implements _$$NutritionInformationModelImplCopyWith<$Res> {
  __$$NutritionInformationModelImplCopyWithImpl(
      _$NutritionInformationModelImpl _value,
      $Res Function(_$NutritionInformationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? fat = null,
    Object? carbohydrates = null,
    Object? protein = null,
  }) {
    return _then(_$NutritionInformationModelImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 3, adapterName: "NutritionInformationAdapter")
class _$NutritionInformationModelImpl extends _NutritionInformationModel {
  _$NutritionInformationModelImpl(
      {@HiveType(typeId: 0) this.calories = "",
      @HiveType(typeId: 1) this.fat = "",
      @HiveType(typeId: 2) this.carbohydrates = "",
      @HiveType(typeId: 3) this.protein = ""})
      : super._();

  factory _$NutritionInformationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutritionInformationModelImplFromJson(json);

  @override
  @JsonKey()
  @HiveType(typeId: 0)
  final String calories;
  @override
  @JsonKey()
  @HiveType(typeId: 1)
  final String fat;
  @override
  @JsonKey()
  @HiveType(typeId: 2)
  final String carbohydrates;
  @override
  @JsonKey()
  @HiveType(typeId: 3)
  final String protein;

  @override
  String toString() {
    return 'NutritionInformationModel(calories: $calories, fat: $fat, carbohydrates: $carbohydrates, protein: $protein)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutritionInformationModelImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates) &&
            (identical(other.protein, protein) || other.protein == protein));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, calories, fat, carbohydrates, protein);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NutritionInformationModelImplCopyWith<_$NutritionInformationModelImpl>
      get copyWith => __$$NutritionInformationModelImplCopyWithImpl<
          _$NutritionInformationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutritionInformationModelImplToJson(
      this,
    );
  }
}

abstract class _NutritionInformationModel extends NutritionInformationModel {
  factory _NutritionInformationModel(
          {@HiveType(typeId: 0) final String calories,
          @HiveType(typeId: 1) final String fat,
          @HiveType(typeId: 2) final String carbohydrates,
          @HiveType(typeId: 3) final String protein}) =
      _$NutritionInformationModelImpl;
  _NutritionInformationModel._() : super._();

  factory _NutritionInformationModel.fromJson(Map<String, dynamic> json) =
      _$NutritionInformationModelImpl.fromJson;

  @override
  @HiveType(typeId: 0)
  String get calories;
  @override
  @HiveType(typeId: 1)
  String get fat;
  @override
  @HiveType(typeId: 2)
  String get carbohydrates;
  @override
  @HiveType(typeId: 3)
  String get protein;
  @override
  @JsonKey(ignore: true)
  _$$NutritionInformationModelImplCopyWith<_$NutritionInformationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
