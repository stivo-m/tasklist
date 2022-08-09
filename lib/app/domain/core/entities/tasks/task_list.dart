import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_item.dart';
import 'package:tasklist/app/domain/core/objects/enums.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';

part 'task_list.freezed.dart';
part 'task_list.g.dart';

@freezed
class TaskList with _$TaskList {
  factory TaskList({
    @JsonKey(name: 'id')
        String? id,
    @JsonKey(name: 'title')
        String? title,
    @JsonKey(name: 'description')
        String? description,
    @JsonKey(name: 'tasks')
        List<TaskItem>? tasks,
    @JsonKey(
      name: 'task_list_type',
      defaultValue: TasListType.user,
    )
        TasListType? taskListType,
  }) = _TaskList;
  factory TaskList.fromJson(Map<String, dynamic> json) =>
      _$TaskListFromJson(json);
  factory TaskList.initial() => TaskList(
        id: null,
        title: null,
        description: null,
        tasks: <TaskItem>[],
      );
}

final List<TaskList> defaultItems = <TaskList>[
  TaskList(
    id: '',
    title: AppStrings.defaultTask,
    taskListType: TasListType.systemDefault,
  ),
  TaskList(
    id: '',
    title: AppStrings.createNewList,
    taskListType: TasListType.systemDefault,
  ),
];
