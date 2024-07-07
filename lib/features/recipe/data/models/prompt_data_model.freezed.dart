// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromptDataModel {
  String get textInput => throw _privateConstructorUsedError;
  List<XFile>? get images => throw _privateConstructorUsedError;
  List<String>? get additionalTextInputs => throw _privateConstructorUsedError;
  List<String>? get selectedBasicIngredients =>
      throw _privateConstructorUsedError;
  List<String>? get selectedCuisines => throw _privateConstructorUsedError;
  List<String>? get selectedDietaryRestrictions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromptDataModelCopyWith<PromptDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptDataModelCopyWith<$Res> {
  factory $PromptDataModelCopyWith(
          PromptDataModel value, $Res Function(PromptDataModel) then) =
      _$PromptDataModelCopyWithImpl<$Res, PromptDataModel>;
  @useResult
  $Res call(
      {String textInput,
      List<XFile>? images,
      List<String>? additionalTextInputs,
      List<String>? selectedBasicIngredients,
      List<String>? selectedCuisines,
      List<String>? selectedDietaryRestrictions});
}

/// @nodoc
class _$PromptDataModelCopyWithImpl<$Res, $Val extends PromptDataModel>
    implements $PromptDataModelCopyWith<$Res> {
  _$PromptDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textInput = null,
    Object? images = freezed,
    Object? additionalTextInputs = freezed,
    Object? selectedBasicIngredients = freezed,
    Object? selectedCuisines = freezed,
    Object? selectedDietaryRestrictions = freezed,
  }) {
    return _then(_value.copyWith(
      textInput: null == textInput
          ? _value.textInput
          : textInput // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
      additionalTextInputs: freezed == additionalTextInputs
          ? _value.additionalTextInputs
          : additionalTextInputs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedBasicIngredients: freezed == selectedBasicIngredients
          ? _value.selectedBasicIngredients
          : selectedBasicIngredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedCuisines: freezed == selectedCuisines
          ? _value.selectedCuisines
          : selectedCuisines // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedDietaryRestrictions: freezed == selectedDietaryRestrictions
          ? _value.selectedDietaryRestrictions
          : selectedDietaryRestrictions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptDataModelImplCopyWith<$Res>
    implements $PromptDataModelCopyWith<$Res> {
  factory _$$PromptDataModelImplCopyWith(_$PromptDataModelImpl value,
          $Res Function(_$PromptDataModelImpl) then) =
      __$$PromptDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String textInput,
      List<XFile>? images,
      List<String>? additionalTextInputs,
      List<String>? selectedBasicIngredients,
      List<String>? selectedCuisines,
      List<String>? selectedDietaryRestrictions});
}

/// @nodoc
class __$$PromptDataModelImplCopyWithImpl<$Res>
    extends _$PromptDataModelCopyWithImpl<$Res, _$PromptDataModelImpl>
    implements _$$PromptDataModelImplCopyWith<$Res> {
  __$$PromptDataModelImplCopyWithImpl(
      _$PromptDataModelImpl _value, $Res Function(_$PromptDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textInput = null,
    Object? images = freezed,
    Object? additionalTextInputs = freezed,
    Object? selectedBasicIngredients = freezed,
    Object? selectedCuisines = freezed,
    Object? selectedDietaryRestrictions = freezed,
  }) {
    return _then(_$PromptDataModelImpl(
      textInput: null == textInput
          ? _value.textInput
          : textInput // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
      additionalTextInputs: freezed == additionalTextInputs
          ? _value._additionalTextInputs
          : additionalTextInputs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedBasicIngredients: freezed == selectedBasicIngredients
          ? _value._selectedBasicIngredients
          : selectedBasicIngredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedCuisines: freezed == selectedCuisines
          ? _value._selectedCuisines
          : selectedCuisines // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedDietaryRestrictions: freezed == selectedDietaryRestrictions
          ? _value._selectedDietaryRestrictions
          : selectedDietaryRestrictions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$PromptDataModelImpl implements _PromptDataModel {
  const _$PromptDataModelImpl(
      {required this.textInput,
      final List<XFile>? images,
      final List<String>? additionalTextInputs,
      final List<String>? selectedBasicIngredients,
      final List<String>? selectedCuisines,
      final List<String>? selectedDietaryRestrictions})
      : _images = images,
        _additionalTextInputs = additionalTextInputs,
        _selectedBasicIngredients = selectedBasicIngredients,
        _selectedCuisines = selectedCuisines,
        _selectedDietaryRestrictions = selectedDietaryRestrictions;

  @override
  final String textInput;
  final List<XFile>? _images;
  @override
  List<XFile>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _additionalTextInputs;
  @override
  List<String>? get additionalTextInputs {
    final value = _additionalTextInputs;
    if (value == null) return null;
    if (_additionalTextInputs is EqualUnmodifiableListView)
      return _additionalTextInputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _selectedBasicIngredients;
  @override
  List<String>? get selectedBasicIngredients {
    final value = _selectedBasicIngredients;
    if (value == null) return null;
    if (_selectedBasicIngredients is EqualUnmodifiableListView)
      return _selectedBasicIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _selectedCuisines;
  @override
  List<String>? get selectedCuisines {
    final value = _selectedCuisines;
    if (value == null) return null;
    if (_selectedCuisines is EqualUnmodifiableListView)
      return _selectedCuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _selectedDietaryRestrictions;
  @override
  List<String>? get selectedDietaryRestrictions {
    final value = _selectedDietaryRestrictions;
    if (value == null) return null;
    if (_selectedDietaryRestrictions is EqualUnmodifiableListView)
      return _selectedDietaryRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PromptDataModel(textInput: $textInput, images: $images, additionalTextInputs: $additionalTextInputs, selectedBasicIngredients: $selectedBasicIngredients, selectedCuisines: $selectedCuisines, selectedDietaryRestrictions: $selectedDietaryRestrictions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptDataModelImpl &&
            (identical(other.textInput, textInput) ||
                other.textInput == textInput) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._additionalTextInputs, _additionalTextInputs) &&
            const DeepCollectionEquality().equals(
                other._selectedBasicIngredients, _selectedBasicIngredients) &&
            const DeepCollectionEquality()
                .equals(other._selectedCuisines, _selectedCuisines) &&
            const DeepCollectionEquality().equals(
                other._selectedDietaryRestrictions,
                _selectedDietaryRestrictions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      textInput,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_additionalTextInputs),
      const DeepCollectionEquality().hash(_selectedBasicIngredients),
      const DeepCollectionEquality().hash(_selectedCuisines),
      const DeepCollectionEquality().hash(_selectedDietaryRestrictions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptDataModelImplCopyWith<_$PromptDataModelImpl> get copyWith =>
      __$$PromptDataModelImplCopyWithImpl<_$PromptDataModelImpl>(
          this, _$identity);
}

abstract class _PromptDataModel implements PromptDataModel {
  const factory _PromptDataModel(
      {required final String textInput,
      final List<XFile>? images,
      final List<String>? additionalTextInputs,
      final List<String>? selectedBasicIngredients,
      final List<String>? selectedCuisines,
      final List<String>? selectedDietaryRestrictions}) = _$PromptDataModelImpl;

  @override
  String get textInput;
  @override
  List<XFile>? get images;
  @override
  List<String>? get additionalTextInputs;
  @override
  List<String>? get selectedBasicIngredients;
  @override
  List<String>? get selectedCuisines;
  @override
  List<String>? get selectedDietaryRestrictions;
  @override
  @JsonKey(ignore: true)
  _$$PromptDataModelImplCopyWith<_$PromptDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
