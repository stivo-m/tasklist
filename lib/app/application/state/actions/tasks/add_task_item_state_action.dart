import 'package:async_redux/async_redux.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_item.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';

class AddTaskItemStateAction extends ReduxAction<AppState> {
  AddTaskItemStateAction({
    required this.taskItem,
    required this.taskListId,
  });

  final TaskItem taskItem;
  final String taskListId;

  @override
  AppState? reduce() {
    final List<TaskList> previousTaskLists =
        state.taskState?.tasksLists ?? <TaskList>[];

    List<TaskList>? tasks = previousTaskLists
        .where(
          (TaskList item) => item.id == taskListId,
        )
        .toList();

    if (tasks.isEmpty || tasks.first.id != taskListId) {
      // this item does not exist.
      // TODO: Show an error
      return state;
    }

    TaskList taskList = tasks.first;

    // find the task to update
    TaskItem? toUpdate = taskList.tasks
        ?.where(
          (TaskItem task) => task.id == taskItem.id,
        )
        .first;

    if (toUpdate == null) {
      // this item does not exist.
      // TODO: Show an error
      return state;
    }

    taskList.tasks?.remove(toUpdate);
    taskList.tasks?.add(taskItem);

    return state.copyWith.taskState?.call(
      tasksLists: <TaskList>[
        taskList,
        ...previousTaskLists
            .where((TaskList list) => list.id != taskListId)
            .toList(),
      ],
    );
  }
}
