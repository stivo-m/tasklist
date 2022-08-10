import 'package:flutter/material.dart';
import 'package:tasklist/app/domain/core/objects/enums.dart';
import 'package:tasklist/app/infrastructure/repository/data/task_list_repository.dart';
import 'package:tasklist/bin/task_list_app.dart';

Future<void> appBootstrap(AppContext appContext) async {
  await WidgetsFlutterBinding.ensureInitialized();
  await TaskListRepository.init();
  return runApp(TaskListApp(
    appContext: appContext,
  ));
}
