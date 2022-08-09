import 'package:flutter/material.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_item.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/objects/enums.dart';
import 'package:tasklist/app/presentation/widgets/empty_widget.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final TaskList taskList;

  @override
  Widget build(BuildContext context) {
    if (taskList.tasks == null || taskList.tasks!.isEmpty) {
      return EmptyWidget();
    }

    return ListView.builder(
      itemCount: taskList.tasks!.length,
      itemBuilder: (BuildContext context, int index) {
        TaskItem task = taskList.tasks![index];
        return ListTile(
          onTap: () {},
          leading: GestureDetector(
            onTap: () {},
            child: Builder(
              builder: (BuildContext context) {
                if (task.status == TaskStatus.pending) {
                  return Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      ),
                    ),
                  );
                }

                return Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                  ),
                  child: Icon(Icons.check),
                );
              },
            ),
          ),
          dense: true,
          title: Text(task.title ?? ''),
          subtitle:
              task.description == null ? null : Text(task.description ?? ''),
        );
      },
    );
  }
}
