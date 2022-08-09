import 'package:flutter/material.dart';
import 'package:tasklist/app/domain/core/objects/enums.dart';
import 'package:tasklist/bin/task_list_app.dart';

void appBootstrap(AppContext appContext) {
  return runApp(TaskListApp(
    appContext: appContext,
  ));
}
