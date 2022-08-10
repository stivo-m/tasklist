// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskItem _$$_TaskItemFromJson(Map<String, dynamic> json) => _$_TaskItem(
      id: json['uuid'] as String?,
      parentId: json['parent_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      reminderDate: json['reminder_date'] as String?,
      status: $enumDecodeNullable(_$TaskStatusEnumMap, json['status']) ??
          TaskStatus.pending,
    );

Map<String, dynamic> _$$_TaskItemToJson(_$_TaskItem instance) =>
    <String, dynamic>{
      'uuid': instance.id,
      'parent_id': instance.parentId,
      'title': instance.title,
      'description': instance.description,
      'reminder_date': instance.reminderDate,
      'status': _$TaskStatusEnumMap[instance.status],
    };

const _$TaskStatusEnumMap = {
  TaskStatus.pending: 'pending',
  TaskStatus.completed: 'completed',
  TaskStatus.unknown: 'unknown',
};
