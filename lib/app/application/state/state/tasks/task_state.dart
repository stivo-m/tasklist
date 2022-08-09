import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';

part 'task_state.freezed.dart';
part 'task_state.g.dart';

@freezed
class TaskState with _$TaskState {
  factory TaskState({
    List<TaskList>? tasksLists,
    String? error,
  }) = _TaskState;
  factory TaskState.fromJson(Map<String, dynamic> json) =>
      _$TaskStateFromJson(json);

  factory TaskState.initial() => TaskState(
        error: null,
        tasksLists: <TaskList>[
          ...defaultItems,
        ],
      );
}
