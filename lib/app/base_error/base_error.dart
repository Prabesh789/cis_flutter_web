import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_error.freezed.dart';
part 'base_error.g.dart';

@freezed
class BaseError with _$BaseError {
  const factory BaseError({
    int? code,
    String? message,
    String? data,
  }) = _BaseError;
  factory BaseError.fromJson(Map<String, dynamic> json) =>
      _$BaseErrorFromJson(json);
}
