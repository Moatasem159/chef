import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'firebase_user.g.dart';

part 'firebase_user.freezed.dart';

@freezed
class FirebaseUserModel extends HiveObject with _$FirebaseUserModel {
  FirebaseUserModel._();

  @HiveType(typeId: 0)
  factory FirebaseUserModel({
    @HiveField(0) String? uId,
    @HiveField(1) String? name,
    @HiveField(2) String? email,
    @HiveField(3) String? password,
  }) = _FirebaseUserModel;

  factory FirebaseUserModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserModelFromJson(json);
}