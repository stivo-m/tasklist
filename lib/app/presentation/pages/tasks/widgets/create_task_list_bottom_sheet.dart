import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/application/state/view_models/tasks/tasks_view_model.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_item.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';
import 'package:tasklist/app/presentation/widgets/input_field.dart';

class CreateTaskListBottomSheet extends StatefulWidget {
  const CreateTaskListBottomSheet({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final TaskList taskList;

  @override
  State<CreateTaskListBottomSheet> createState() =>
      _CreateTaskListBottomSheetState();
}

class _CreateTaskListBottomSheetState extends State<CreateTaskListBottomSheet> {
  TextEditingController description = TextEditingController();
  bool hasDescription = false;
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextInputField(
            controller: title,
            hintText: AppStrings.newTaskText,
          ),
          const SizedBox(height: 10),
          if (hasDescription) ...<Widget>[
            TextInputField(
              controller: description,
              hintText: AppStrings.addDetailsText,
              fontSize: 12,
              maxLines: 2,
            ),
            const SizedBox(height: 8),
          ],
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    hasDescription = !hasDescription;
                  });
                },
                child: Icon(
                  Icons.description_outlined,
                  color: Colors.grey,
                ),
              ),
              StoreConnector<AppState, TasksViewModel>(
                converter: (Store<AppState> store) =>
                    TasksViewModel.fromStore(store),
                builder: (BuildContext context, TasksViewModel vm) {
                  return TextButton(
                    onPressed: () {
                      // bool valid =
                      //     hasDescription && description.text.isNotEmpty;
                      bool valid = true;
                      if (title.text.isNotEmpty) {
                        // check to see if description is needed

                        if (valid) {
                          // save the record
                          vm.createTaskItem(
                            context: context,
                            taskId: widget.taskList.id ?? '',
                            taskItem: TaskItem(
                              title: title.text,
                              description: description.text,
                            ),
                          );
                          Navigator.pop(context);
                        }
                      }
                    },
                    child: Text(AppStrings.saveText),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
