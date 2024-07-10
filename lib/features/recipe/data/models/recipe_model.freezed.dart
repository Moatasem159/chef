// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  @HiveType(typeId: 0)
  String get title => throw _privateConstructorUsedError;
  @HiveType(typeId: 1)
  String get description => throw _privateConstructorUsedError;
  @HiveType(typeId: 2)
  String get cuisine => throw _privateConstructorUsedError;
  @HiveType(typeId: 3)
  String get allergens => throw _privateConstructorUsedError;
  @HiveType(typeId: 4)
  String get servings => throw _privateConstructorUsedError;
  @HiveType(typeId: 5)
  List<String> get instructions => throw _privateConstructorUsedError;
  @HiveType(typeId: 6)
  List<String> get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {@HiveType(typeId: 0) String title,
      @HiveType(typeId: 1) String description,
      @HiveType(typeId: 2) String cuisine,
      @HiveType(typeId: 3) String allergens,
      @HiveType(typeId: 4) String servings,
      @HiveType(typeId: 5) List<String> instructions,
      @HiveType(typeId: 6) List<String> ingredients});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? cuisine = null,
    Object? allergens = null,
    Object? servings = null,
    Object? instructions = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      allergens: null == allergens
          ? _value.allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeModelImplCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$RecipeModelImplCopyWith(
          _$RecipeModelImpl value, $Res Function(_$RecipeModelImpl) then) =
      __$$RecipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveType(typeId: 0) String title,
      @HiveType(typeId: 1) String description,
      @HiveType(typeId: 2) String cuisine,
      @HiveType(typeId: 3) String allergens,
      @HiveType(typeId: 4) String servings,
      @HiveType(typeId: 5) List<String> instructions,
      @HiveType(typeId: 6) List<String> ingredients});
}

/// @nodoc
class __$$RecipeModelImplCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$RecipeModelImpl>
    implements _$$RecipeModelImplCopyWith<$Res> {
  __$$RecipeModelImplCopyWithImpl(
      _$RecipeModelImpl _value, $Res Function(_$RecipeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? cuisine = null,
    Object? allergens = null,
    Object? servings = null,
    Object? instructions = null,
    Object? ingredients = null,
  }) {
    return _then(_$RecipeModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      allergens: null == allergens
          ? _value.allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 2)
class _$RecipeModelImpl extends _RecipeModel {
  _$RecipeModelImpl(
      {@HiveType(typeId: 0) this.title = "",
      @HiveType(typeId: 1) this.description = "",
      @HiveType(typeId: 2) this.cuisine = "",
      @HiveType(typeId: 3) this.allergens = "",
      @HiveType(typeId: 4) this.servings = "",
      @HiveType(typeId: 5) final List<String> instructions = const [],
      @HiveType(typeId: 6) final List<String> ingredients = const []})
      : _instructions = instructions,
        _ingredients = ingredients,
        super._();

  factory _$RecipeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeModelImplFromJson(json);

  @override
  @JsonKey()
  @HiveType(typeId: 0)
  final String title;
  @override
  @JsonKey()
  @HiveType(typeId: 1)
  final String description;
  @override
  @JsonKey()
  @HiveType(typeId: 2)
  final String cuisine;
  @override
  @JsonKey()
  @HiveType(typeId: 3)
  final String allergens;
  @override
  @JsonKey()
  @HiveType(typeId: 4)
  final String servings;
  final List<String> _instructions;
  @override
  @JsonKey()
  @HiveType(typeId: 5)
  List<String> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  final List<String> _ingredients;
  @override
  @JsonKey()
  @HiveType(typeId: 6)
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'RecipeModel(title: $title, description: $description, cuisine: $cuisine, allergens: $allergens, servings: $servings, instructions: $instructions, ingredients: $ingredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.allergens, allergens) ||
                other.allergens == allergens) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      cuisine,
      allergens,
      servings,
      const DeepCollectionEquality().hash(_instructions),
      const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      __$$RecipeModelImplCopyWithImpl<_$RecipeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeModelImplToJson(
      this,
    );
  }
}

abstract class _RecipeModel extends RecipeModel {
  factory _RecipeModel(
      {@HiveType(typeId: 0) final String title,
      @HiveType(typeId: 1) final String description,
      @HiveType(typeId: 2) final String cuisine,
      @HiveType(typeId: 3) final String allergens,
      @HiveType(typeId: 4) final String servings,
      @HiveType(typeId: 5) final List<String> instructions,
      @HiveType(typeId: 6) final List<String> ingredients}) = _$RecipeModelImpl;
  _RecipeModel._() : super._();

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$RecipeModelImpl.fromJson;

  @override
  @HiveType(typeId: 0)
  String get title;
  @override
  @HiveType(typeId: 1)
  String get description;
  @override
  @HiveType(typeId: 2)
  String get cuisine;
  @override
  @HiveType(typeId: 3)
  String get allergens;
  @override
  @HiveType(typeId: 4)
  String get servings;
  @override
  @HiveType(typeId: 5)
  List<String> get instructions;
  @override
  @HiveType(typeId: 6)
  List<String> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
