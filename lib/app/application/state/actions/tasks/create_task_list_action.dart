import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/service/utils/permission_utils.dart';
import 'package:tasklist/app/application/state/actions/tasks/fetch_task_list_action.dart';
import 'package:tasklist/app/application/state/flags/flags.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/domain/core/entities/errors/system_error.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/interfaces/database/i_database_interface.dart';
import 'package:tasklist/app/infrastructure/repository/data/task_list_repository.dart';

class CreateTaskListAction extends ReduxAction<AppState> {
  CreateTaskListAction({
    required this.taskList,
    required this.context,
    this.client,
  });

  IDatabaseInterface? client;
  final BuildContext context;
  final TaskList taskList;

  @override
  void after() {
    super.after();
    store.dispatch(WaitAction<AppState>.remove(AppFlags.createTaskListFlag));
  }

  @override
  FutureOr<void> before() {
    store.dispatch(WaitAction<AppState>.add(AppFlags.createTaskListFlag));
    return super.before();
  }

  @override
  Future<AppState?> reduce() async {
    client ??= TaskListRepository();
    await requestPermissions();
    final Either<SystemError, TaskList> result =
        await client!.createRecord<TaskList>(
      taskList.toJson(),
    );

    return result.fold(
      (SystemError error) {
        return state;
      },
      (TaskList record) async {
        await store.dispatch(FetchTaskListAction(context: context));
        return state;
      },
    );
  }
}
