// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseUserModelImpl _$$FirebaseUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseUserModelImpl(
      uId: json['uId'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$FirebaseUserModelImplToJson(
        _$FirebaseUserModelImpl instance) =>
    <String, dynamic>{
      'uId': instance.uId,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
