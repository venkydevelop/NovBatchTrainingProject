// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInResponseModelImpl _$$SignInResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInResponseModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SignInDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignInResponseModelImplToJson(
        _$SignInResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$SignInDataModelImpl _$$SignInDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInDataModelImpl(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$SignInDataModelImplToJson(
        _$SignInDataModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$UserProfileResponseModelImpl _$$UserProfileResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileResponseModelImplToJson(
        _$UserProfileResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UserProfileDataModelImpl _$$UserProfileDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDataModelImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$UserProfileDataModelImplToJson(
        _$UserProfileDataModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

_$FecthUserResponseModelImpl _$$FecthUserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FecthUserResponseModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserProfileDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FecthUserResponseModelImplToJson(
        _$FecthUserResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
