import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/application/state/view_models/tasks/tasks_view_model.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';
import 'package:tasklist/app/presentation/widgets/input_field.dart';

class CreateTaskListPage extends StatefulWidget {
  const CreateTaskListPage({Key? key}) : super(key: key);

  @override
  State<CreateTaskListPage> createState() => _CreateTaskListPageState();
}

class _CreateTaskListPageState extends State<CreateTaskListPage> {
  TextEditingController listTitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Icon(Icons.close),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        AppStrings.createNewList,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  StoreConnector<AppState, TasksViewModel>(
                    converter: (Store<AppState> store) =>
                        TasksViewModel.fromStore(store),
                    builder: (BuildContext context, TasksViewModel vm) {
                      return TextButton(
                        onPressed: () {
                          if (listTitle.text.isNotEmpty) {
                            vm.createTaskList(
                              context: context,
                              taskList: TaskList(
                                title: listTitle.text,
                              ),
                            );
                            Navigator.pop(context);
                          }
                        },
                        child: Text(AppStrings.doneText),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextInputField(
                controller: listTitle,
                hintText: AppStrings.enterListTitleText,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
