import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/state/actions/tasks/create_task_item_action.dart';
import 'package:tasklist/app/application/state/actions/tasks/create_task_list_action.dart';
import 'package:tasklist/app/application/state/actions/tasks/delete_task_list_item_action.dart';
import 'package:tasklist/app/application/state/flags/flags.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_item.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';

class TasksViewModel {
  TasksViewModel({
    required this.isLoading,
    required this.taskLists,
    required this.createTaskList,
    required this.createTaskItem,
    required this.removeTaskListItem,
  });

  final Function({
    required BuildContext context,
    required TaskList taskList,
  }) createTaskList;

  final Function({
    required BuildContext context,
    required TaskList taskList,
  }) removeTaskListItem;

  final Function({
    required BuildContext context,
    required String taskId,
    required TaskItem taskItem,
  }) createTaskItem;

  final bool isLoading;
  final List<TaskList> taskLists;

  static TasksViewModel fromStore(Store<AppState> store) {
    return TasksViewModel(
      isLoading:
          store.state.wait?.isWaitingFor(AppFlags.fetchTaskListFlag) ?? false,
      taskLists: store.state.taskState?.tasksLists ?? <TaskList>[],
      createTaskItem: ({
        required BuildContext context,
        required String taskId,
        required TaskItem taskItem,
      }) {
        store.dispatch(
          CreateTaskItemAction(
            taskItem: taskItem,
            context: context,
            taskListId: taskId,
          ),
        );
      },
      createTaskList: ({
        required BuildContext context,
        required TaskList taskList,
      }) {
        store.dispatch(
          CreateTaskListAction(
            taskList: taskList,
            context: context,
          ),
        );
      },
      removeTaskListItem: ({
        required BuildContext context,
        required TaskList taskList,
      }) {
        store.dispatch(
          DeleteTaskListItemAction(
            taskList: taskList,
            context: context,
          ),
        );
      },
    );
  }
}
