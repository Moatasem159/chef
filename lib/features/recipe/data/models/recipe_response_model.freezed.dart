// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeResponseModel _$RecipeResponseModelFromJson(Map<String, dynamic> json) {
  return _RecipeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeResponseModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "english_recipe")
  RecipeModel get englishRecipe => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "arabic_recipe")
  RecipeModel get arabicRecipe => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "nutrition_information")
  NutritionInformationModel get nutationInformation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeResponseModelCopyWith<RecipeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeResponseModelCopyWith<$Res> {
  factory $RecipeResponseModelCopyWith(
          RecipeResponseModel value, $Res Function(RecipeResponseModel) then) =
      _$RecipeResponseModelCopyWithImpl<$Res, RecipeResponseModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @JsonKey(name: "english_recipe") RecipeModel englishRecipe,
      @HiveField(2) @JsonKey(name: "arabic_recipe") RecipeModel arabicRecipe,
      @HiveField(3)
      @JsonKey(name: "nutrition_information")
      NutritionInformationModel nutationInformation});

  $RecipeModelCopyWith<$Res> get englishRecipe;
  $RecipeModelCopyWith<$Res> get arabicRecipe;
  $NutritionInformationModelCopyWith<$Res> get nutationInformation;
}

/// @nodoc
class _$RecipeResponseModelCopyWithImpl<$Res, $Val extends RecipeResponseModel>
    implements $RecipeResponseModelCopyWith<$Res> {
  _$RecipeResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? englishRecipe = null,
    Object? arabicRecipe = null,
    Object? nutationInformation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      englishRecipe: null == englishRecipe
          ? _value.englishRecipe
          : englishRecipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
      arabicRecipe: null == arabicRecipe
          ? _value.arabicRecipe
          : arabicRecipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
      nutationInformation: null == nutationInformation
          ? _value.nutationInformation
          : nutationInformation // ignore: cast_nullable_to_non_nullable
              as NutritionInformationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeModelCopyWith<$Res> get englishRecipe {
    return $RecipeModelCopyWith<$Res>(_value.englishRecipe, (value) {
      return _then(_value.copyWith(englishRecipe: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeModelCopyWith<$Res> get arabicRecipe {
    return $RecipeModelCopyWith<$Res>(_value.arabicRecipe, (value) {
      return _then(_value.copyWith(arabicRecipe: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutritionInformationModelCopyWith<$Res> get nutationInformation {
    return $NutritionInformationModelCopyWith<$Res>(_value.nutationInformation,
        (value) {
      return _then(_value.copyWith(nutationInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeResponseModelImplCopyWith<$Res>
    implements $RecipeResponseModelCopyWith<$Res> {
  factory _$$RecipeResponseModelImplCopyWith(_$RecipeResponseModelImpl value,
          $Res Function(_$RecipeResponseModelImpl) then) =
      __$$RecipeResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @JsonKey(name: "english_recipe") RecipeModel englishRecipe,
      @HiveField(2) @JsonKey(name: "arabic_recipe") RecipeModel arabicRecipe,
      @HiveField(3)
      @JsonKey(name: "nutrition_information")
      NutritionInformationModel nutationInformation});

  @override
  $RecipeModelCopyWith<$Res> get englishRecipe;
  @override
  $RecipeModelCopyWith<$Res> get arabicRecipe;
  @override
  $NutritionInformationModelCopyWith<$Res> get nutationInformation;
}

/// @nodoc
class __$$RecipeResponseModelImplCopyWithImpl<$Res>
    extends _$RecipeResponseModelCopyWithImpl<$Res, _$RecipeResponseModelImpl>
    implements _$$RecipeResponseModelImplCopyWith<$Res> {
  __$$RecipeResponseModelImplCopyWithImpl(_$RecipeResponseModelImpl _value,
      $Res Function(_$RecipeResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? englishRecipe = null,
    Object? arabicRecipe = null,
    Object? nutationInformation = null,
  }) {
    return _then(_$RecipeResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      englishRecipe: null == englishRecipe
          ? _value.englishRecipe
          : englishRecipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
      arabicRecipe: null == arabicRecipe
          ? _value.arabicRecipe
          : arabicRecipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
      nutationInformation: null == nutationInformation
          ? _value.nutationInformation
          : nutationInformation // ignore: cast_nullable_to_non_nullable
              as NutritionInformationModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 1)
class _$RecipeResponseModelImpl extends _RecipeResponseModel {
  _$RecipeResponseModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1)
      @JsonKey(name: "english_recipe")
      required this.englishRecipe,
      @HiveField(2) @JsonKey(name: "arabic_recipe") required this.arabicRecipe,
      @HiveField(3)
      @JsonKey(name: "nutrition_information")
      required this.nutationInformation})
      : super._();

  factory _$RecipeResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeResponseModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  @JsonKey(name: "english_recipe")
  final RecipeModel englishRecipe;
  @override
  @HiveField(2)
  @JsonKey(name: "arabic_recipe")
  final RecipeModel arabicRecipe;
  @override
  @HiveField(3)
  @JsonKey(name: "nutrition_information")
  final NutritionInformationModel nutationInformation;

  @override
  String toString() {
    return 'RecipeResponseModel(id: $id, englishRecipe: $englishRecipe, arabicRecipe: $arabicRecipe, nutationInformation: $nutationInformation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.englishRecipe, englishRecipe) ||
                other.englishRecipe == englishRecipe) &&
            (identical(other.arabicRecipe, arabicRecipe) ||
                other.arabicRecipe == arabicRecipe) &&
            (identical(other.nutationInformation, nutationInformation) ||
                other.nutationInformation == nutationInformation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, englishRecipe, arabicRecipe, nutationInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeResponseModelImplCopyWith<_$RecipeResponseModelImpl> get copyWith =>
      __$$RecipeResponseModelImplCopyWithImpl<_$RecipeResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RecipeResponseModel extends RecipeResponseModel {
  factory _RecipeResponseModel(
          {@HiveField(0) required final String id,
          @HiveField(1)
          @JsonKey(name: "english_recipe")
          required final RecipeModel englishRecipe,
          @HiveField(2)
          @JsonKey(name: "arabic_recipe")
          required final RecipeModel arabicRecipe,
          @HiveField(3)
          @JsonKey(name: "nutrition_information")
          required final NutritionInformationModel nutationInformation}) =
      _$RecipeResponseModelImpl;
  _RecipeResponseModel._() : super._();

  factory _RecipeResponseModel.fromJson(Map<String, dynamic> json) =
      _$RecipeResponseModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  @JsonKey(name: "english_recipe")
  RecipeModel get englishRecipe;
  @override
  @HiveField(2)
  @JsonKey(name: "arabic_recipe")
  RecipeModel get arabicRecipe;
  @override
  @HiveField(3)
  @JsonKey(name: "nutrition_information")
  NutritionInformationModel get nutationInformation;
  @override
  @JsonKey(ignore: true)
  _$$RecipeResponseModelImplCopyWith<_$RecipeResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
