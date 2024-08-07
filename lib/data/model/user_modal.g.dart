// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usermodel _$UsermodelFromJson(Map<String, dynamic> json) => Usermodel(
      json['password'] as String,
      json['email'] as String,
      id: json['id'] as String?,
      fullname: json['fullname'] as String,
    );

Map<String, dynamic> _$UsermodelToJson(Usermodel instance) => <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'password': instance.password,
      'email': instance.email,
    };
