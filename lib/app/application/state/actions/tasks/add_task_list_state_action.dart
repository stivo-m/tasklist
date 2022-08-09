import 'package:async_redux/async_redux.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';

class AddTaskListStateAction extends ReduxAction<AppState> {
  AddTaskListStateAction(this.taskList);

  final TaskList taskList;

  @override
  AppState? reduce() {
    final List<TaskList> previousTaskLists =
        state.taskState?.tasksLists ?? <TaskList>[];

    return state.copyWith.taskState?.call(
      tasksLists: <TaskList>[
        previousTaskLists.first,
        taskList,
        previousTaskLists.last,
      ],
    );
  }
}
