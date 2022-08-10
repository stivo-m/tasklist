import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/application/state/view_models/tasks/tasks_view_model.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/objects/enums.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';

class ShowTaskListOptionsBottomSheet extends StatelessWidget {
  const ShowTaskListOptionsBottomSheet({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final TaskList taskList;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          ListTile(
            dense: true,
            title: Text(AppStrings.renameList),
          ),
          Divider(),
          StoreConnector<AppState, TasksViewModel>(
            converter: (Store<AppState> store) =>
                TasksViewModel.fromStore(store),
            builder: (BuildContext context, TasksViewModel vm) {
              return ListTile(
                onTap: () async {
                  await vm.removeTaskListItem(
                    context: context,
                    taskList: taskList,
                  );
                  Navigator.of(context).pop();
                },
                enabled: taskList.taskListType == TasListType.user,
                dense: true,
                title: Text(AppStrings.deleteList),
                subtitle: Text(AppStrings.defaultCannotBeDeleted),
              );
            },
          ),
        ],
      ),
    );
  }
}
