// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FirebaseUserModelImplAdapter
    extends TypeAdapter<_$FirebaseUserModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$FirebaseUserModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FirebaseUserModelImpl(
      uId: fields[0] as String?,
      name: fields[1] as String?,
      email: fields[2] as String?,
      password: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$FirebaseUserModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.uId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FirebaseUserModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseUserModelImpl _$$FirebaseUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseUserModelImpl(
      uId: json['uId'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$FirebaseUserModelImplToJson(
        _$FirebaseUserModelImpl instance) =>
    <String, dynamic>{
      'uId': instance.uId,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
