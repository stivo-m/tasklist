import 'dart:io';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/service/bottom_sheets/app_bottom_sheet.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/application/state/view_models/dashboard/dashboard_view_model.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/presentation/pages/tasks/widgets/show_task_lists_bottom_sheet.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DashboardViewModel>(
      converter: (Store<AppState> store) => DashboardViewModel.fromStore(store),
      builder: (BuildContext context, DashboardViewModel vm) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          color: Colors.grey[200],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () {
                  showAppBottomSheet(
                    context: context,
                    height: (vm.taskLists.length * 60) +
                        (Platform.isAndroid ? 60 : 85),
                    body: ShowTaskListsBottomSheet(
                      taskListTitles: vm.taskLists
                          .map((TaskList list) => list.title ?? '')
                          .toList(),
                    ),
                  );
                },
                child: Icon(Icons.menu),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        );
      },
    );
  }
}
