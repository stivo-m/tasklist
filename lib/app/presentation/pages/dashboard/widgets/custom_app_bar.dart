import 'package:flutter/material.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';
import 'package:tasklist/app/presentation/routes/routes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.taskLists,
    required this.onTap,
  }) : super(key: key);

  final List<TaskList> taskLists;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(AppStrings.appName),
      centerTitle: true,
      pinned: true,
      floating: true,
      bottom: TabBar(
        isScrollable: true,
        onTap: (int index) {
          bool isLastTab = taskLists.indexOf(taskLists.last) == index;
          if (isLastTab) {
            Navigator.of(context).pushNamed(
              AppRoutes.createTaskListPage,
            );
            return;
          }
        },
        tabs: taskLists.map(
          (TaskList list) {
            if (list.title == AppStrings.createNewList) {
              return Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.add, size: 16),
                    const SizedBox(width: 3),
                    Text(list.title ?? AppStrings.createNewList)
                  ],
                ),
              );
            }
            return Tab(
              text: list.title,
            );
          },
        ).toList(),
      ),
    );
  }
}
