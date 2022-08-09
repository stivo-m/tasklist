import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/state/actions/tasks/add_task_item_state_action.dart';
import 'package:tasklist/app/application/state/flags/flags.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/domain/core/entities/errors/system_error.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_item.dart';
import 'package:tasklist/app/domain/core/interfaces/database/i_database_interface.dart';

class CreateTaskItemAction extends ReduxAction<AppState> {
  CreateTaskItemAction({
    required this.taskItem,
    required this.context,
    required this.client,
    required this.taskListId,
  });

  final IDatabaseInterface client;
  final BuildContext context;
  final TaskItem taskItem;
  final String taskListId;

  @override
  void after() {
    super.after();
    store.dispatch(WaitAction<AppState>.remove(AppFlags.createTaskFlag));
  }

  @override
  FutureOr<void> before() {
    store.dispatch(WaitAction<AppState>.add(AppFlags.createTaskFlag));
    return super.before();
  }

  @override
  Future<AppState?> reduce() async {
    final Either<SystemError, TaskItem> result =
        await client.createRecord<TaskItem>(
      <String, dynamic>{
        ...taskItem.toJson(),
        'list_id': taskListId,
      },
    );

    return result.fold(
      (SystemError error) {
        // TODO: Manage Errors
        return state;
      },
      (TaskItem record) {
        store.dispatch(
          AddTaskItemStateAction(taskItem: record, taskListId: taskListId),
        );
        return state;
      },
    );
  }
}
