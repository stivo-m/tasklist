import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/service/utils/permission_utils.dart';
import 'package:tasklist/app/application/state/flags/flags.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/domain/core/entities/errors/system_error.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/interfaces/database/i_database_interface.dart';

class FetchTaskListAction extends ReduxAction<AppState> {
  FetchTaskListAction({
    required this.context,
    required this.client,
  });

  final IDatabaseInterface client;
  final BuildContext context;

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
    await requestPermissions();
    final Either<SystemError, List<TaskList>> result =
        await client.fetchRecords(null);

    return result.fold(
      (SystemError error) {
        return state;
      },
      (List<TaskList> records) {
        return state.copyWith.taskState?.call(
          tasksLists: <TaskList>[
            defaultItems.first,
            ...records,
            defaultItems.last,
          ],
        );
      },
    );
  }
}
