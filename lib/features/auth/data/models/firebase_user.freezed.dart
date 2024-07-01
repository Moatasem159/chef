// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirebaseUserModel _$FirebaseUserModelFromJson(Map<String, dynamic> json) {
  return _FirebaseUserModel.fromJson(json);
}

/// @nodoc
mixin _$FirebaseUserModel {
  @HiveField(0)
  String? get uId => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseUserModelCopyWith<FirebaseUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseUserModelCopyWith<$Res> {
  factory $FirebaseUserModelCopyWith(
          FirebaseUserModel value, $Res Function(FirebaseUserModel) then) =
      _$FirebaseUserModelCopyWithImpl<$Res, FirebaseUserModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? uId,
      @HiveField(1) String? name,
      @HiveField(2) String? email,
      @HiveField(3) String? password});
}

/// @nodoc
class _$FirebaseUserModelCopyWithImpl<$Res, $Val extends FirebaseUserModel>
    implements $FirebaseUserModelCopyWith<$Res> {
  _$FirebaseUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      uId: freezed == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseUserModelImplCopyWith<$Res>
    implements $FirebaseUserModelCopyWith<$Res> {
  factory _$$FirebaseUserModelImplCopyWith(_$FirebaseUserModelImpl value,
          $Res Function(_$FirebaseUserModelImpl) then) =
      __$$FirebaseUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? uId,
      @HiveField(1) String? name,
      @HiveField(2) String? email,
      @HiveField(3) String? password});
}

/// @nodoc
class __$$FirebaseUserModelImplCopyWithImpl<$Res>
    extends _$FirebaseUserModelCopyWithImpl<$Res, _$FirebaseUserModelImpl>
    implements _$$FirebaseUserModelImplCopyWith<$Res> {
  __$$FirebaseUserModelImplCopyWithImpl(_$FirebaseUserModelImpl _value,
      $Res Function(_$FirebaseUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$FirebaseUserModelImpl(
      uId: freezed == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$FirebaseUserModelImpl extends _FirebaseUserModel {
  _$FirebaseUserModelImpl(
      {@HiveField(0) this.uId,
      @HiveField(1) this.name,
      @HiveField(2) this.email,
      @HiveField(3) this.password})
      : super._();

  factory _$FirebaseUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseUserModelImplFromJson(json);

  @override
  @HiveField(0)
  final String? uId;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? email;
  @override
  @HiveField(3)
  final String? password;

  @override
  String toString() {
    return 'FirebaseUserModel(uId: $uId, name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseUserModelImpl &&
            (identical(other.uId, uId) || other.uId == uId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uId, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseUserModelImplCopyWith<_$FirebaseUserModelImpl> get copyWith =>
      __$$FirebaseUserModelImplCopyWithImpl<_$FirebaseUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseUserModelImplToJson(
      this,
    );
  }
}

abstract class _FirebaseUserModel extends FirebaseUserModel {
  factory _FirebaseUserModel(
      {@HiveField(0) final String? uId,
      @HiveField(1) final String? name,
      @HiveField(2) final String? email,
      @HiveField(3) final String? password}) = _$FirebaseUserModelImpl;
  _FirebaseUserModel._() : super._();

  factory _FirebaseUserModel.fromJson(Map<String, dynamic> json) =
      _$FirebaseUserModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get uId;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get email;
  @override
  @HiveField(3)
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseUserModelImplCopyWith<_$FirebaseUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
