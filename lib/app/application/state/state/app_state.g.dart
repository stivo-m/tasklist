// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      currentTabIndex: json['currentTabIndex'] as int?,
      taskState: json['taskState'] == null
          ? null
          : TaskState.fromJson(json['taskState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'currentTabIndex': instance.currentTabIndex,
      'taskState': instance.taskState,
    };
