// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskList _$$_TaskListFromJson(Map<String, dynamic> json) => _$_TaskList(
      id: json['uuid'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => TaskItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      taskListType:
          $enumDecodeNullable(_$TasListTypeEnumMap, json['task_list_type']) ??
              TasListType.user,
    );

Map<String, dynamic> _$$_TaskListToJson(_$_TaskList instance) =>
    <String, dynamic>{
      'uuid': instance.id,
      'title': instance.title,
      'description': instance.description,
      'tasks': instance.tasks,
      'task_list_type': _$TasListTypeEnumMap[instance.taskListType],
    };

const _$TasListTypeEnumMap = {
  TasListType.systemDefault: 'systemDefault',
  TasListType.user: 'user',
};
