import 'package:flutter/material.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';
import 'package:tasklist/app/presentation/routes/routes.dart';

class ShowTaskListsBottomSheet extends StatelessWidget {
  const ShowTaskListsBottomSheet({
    Key? key,
    required this.taskListTitles,
  }) : super(key: key);
  final List<String> taskListTitles;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: taskListTitles.length,
            itemBuilder: (BuildContext context, int index) {
              if (taskListTitles[index] == AppStrings.createNewList) {
                return const SizedBox.shrink();
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    dense: true,
                    title: Text(
                      taskListTitles[index],
                    ),
                  ),
                  Divider(
                    height: 5,
                  )
                ],
              );
            },
          ),
          Divider(
            height: 15,
          ),
          SizedBox(
            width: double.maxFinite,
            child: TextButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(AppRoutes.createTaskListPage);
              },
              icon: Icon(Icons.add),
              label: Text(
                AppStrings.createNewList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
