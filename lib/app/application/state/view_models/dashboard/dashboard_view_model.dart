import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/state/actions/tasks/fetch_task_list_action.dart';
import 'package:tasklist/app/application/state/flags/flags.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/interfaces/database/i_database_interface.dart';
import 'package:tasklist/app/infrastructure/repository/repository.dart';

class DashboardViewModel {
  DashboardViewModel({
    required this.isLoading,
    required this.taskLists,
    required this.fetchTaskListItems,
  });

  final bool isLoading;
  final List<TaskList> taskLists;
  final Function(BuildContext) fetchTaskListItems;

  static DashboardViewModel fromStore(Store<AppState> store) {
    /// [client] will return the respective client responsible for the creation
    /// of tasks
    IDatabaseInterface client = DataRepository.getRepository();
    return DashboardViewModel(
      isLoading:
          store.state.wait?.isWaitingFor(AppFlags.fetchTaskListFlag) ?? false,
      taskLists: store.state.taskState?.tasksLists ?? <TaskList>[],
      fetchTaskListItems: (BuildContext context) {
        store.dispatch(
          FetchTaskListAction(context: context, client: client),
        );
      },
    );
  }
}
