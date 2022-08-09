// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskState _$$_TaskStateFromJson(Map<String, dynamic> json) => _$_TaskState(
      tasksLists: (json['tasksLists'] as List<dynamic>?)
          ?.map((e) => TaskList.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_TaskStateToJson(_$_TaskState instance) =>
    <String, dynamic>{
      'tasksLists': instance.tasksLists,
      'error': instance.error,
    };
