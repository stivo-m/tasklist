// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SystemError _$$_SystemErrorFromJson(Map<String, dynamic> json) =>
    _$_SystemError(
      title: json['title'] as String?,
      description: json['description'] as String?,
      stackTrace: json['stack_trace'] as String?,
    );

Map<String, dynamic> _$$_SystemErrorToJson(_$_SystemError instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'stack_trace': instance.stackTrace,
    };
