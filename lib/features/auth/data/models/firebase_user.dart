import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_user.g.dart';

part 'firebase_user.freezed.dart';

@freezed
class FirebaseUserModel with _$FirebaseUserModel {
  const factory FirebaseUserModel({
    String ? uId,
    required String name,
    required String email,
    required String password,
  }) = _FirebaseUserModel;

  factory FirebaseUserModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserModelFromJson(json);
}