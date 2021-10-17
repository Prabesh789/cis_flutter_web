// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterRequest _$_$_RegisterRequestFromJson(Map<String, dynamic> json) {
  return _$_RegisterRequest(
    name: json['name'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    image: json['image'] as String?,
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$_$_RegisterRequestToJson(_$_RegisterRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'image': instance.image,
      'address': instance.address,
    };
