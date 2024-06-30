import 'package:chef/core/errors/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'firebase_result.freezed.dart';

@freezed
abstract class FirebaseResult<T> with _$FirebaseResult<T> {
  const factory FirebaseResult.success(T data) = Success<T>;
  const factory FirebaseResult.failure(ErrorHandler errorHandler) = Failure<T>;
}