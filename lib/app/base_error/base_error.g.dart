// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseError _$_$_BaseErrorFromJson(Map<String, dynamic> json) {
  return _$_BaseError(
    code: json['code'] as int?,
    message: json['message'] as String?,
    data: json['data'] as String?,
  );
}

Map<String, dynamic> _$_$_BaseErrorToJson(_$_BaseError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
